package com.ruoyi.common.utils.poi;

import com.ruoyi.common.utils.StringUtils;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.*;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.annotation.Excels;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.DateUtils;

import java.io.*;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PDFUtil<T> {
    private static final Logger log = LoggerFactory.getLogger(PDFUtil.class);

    // ============================================样式设置
    // 开始=======================
    private static Font headfont; // 设置字体大小
    private static Font keyfont; // 设置字体大小
    private static Font textfont; // 设置字体大小

    /**
     * 实体对象
     */
    public Class<T> clazz;

    public PDFUtil(Class<T> clazz) {
        this.clazz = clazz;
    }

    /**
     * 文件表头
     */
    private String title;
    /**
     * 导入导出数据列表
     */
    private List<T> list;

    /**
     * 导出类型（EXPORT:导出数据；IMPORT：导入模板）
     */
    private Excel.Type type;

    /**
     * 注解列表
     */
    private List<Object[]> fields;

    static {
        BaseFont bfChinese;
        try {
            bfChinese = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H",
                    BaseFont.NOT_EMBEDDED);
            headfont = new Font(bfChinese, 24, Font.BOLD, BaseColor.BLACK);// 设置字体大小
            keyfont = new Font(bfChinese, 12, Font.BOLD, BaseColor.BLACK);// 设置字体大小
            textfont = new Font(bfChinese, 10, Font.NORMAL, BaseColor.BLACK);// 设置字体大小
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    /**
     * 对list数据源将其里面的数据导入到pdf表单
     *
     * @param list  导出数据集合
     * @param title 文件表头名称
     * @return 结果
     */
    public String exportPdf(List<T> list, String title) throws Exception {
        this.init(list, title, Excel.Type.EXPORT);
        return exportPdf();
    }

    /**
     * 测试代码
     *
     * @param args
     * @throws Exception
     */
    public static void main(String[] args) throws Exception {
        //生成pdf数据
        List<String> header = new ArrayList<String>();
        PdfPTable table = PDFUtil.createTable(15);
        table.addCell(PDFUtil.createHeadCell("年后", 15));
        //测试表头
        for (int i = 0; i < 15; i++) {
            header.add("你好啊" + i);
            table.addCell(PDFUtil.createTitleCell_1("a" + i));
        }
        //测试数据
        for (int i = 0; i < 200; i++) {
            if (header != null && header.size() > 0) {
                for (String str : header) {
                    table.addCell(PDFUtil.createCell_1(str + "b"));
                }
            }
        }

//		输出流 由文件或response生成
        //临时文件名 用于水印操作
        //1、本地传输
        String output = "C:\\Users\\10910\\Desktop\\" + new SimpleDateFormat("mmsss").format(new Date()) + ".pdf";
        BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(new File(output)));

//		action和本地就out不同
//		HttpServletResponse response = null;
//		out = getOutputStream(response, fileName, "pdf");

        /**
         * 业务要求报表水印内容：客服中心报表系统，导出工号+工号
         */
        PDFUtil.exportPdf(out, table, "客服中心报表系统，导出工号969");


        System.out.println("完成");
    }


    public String exportPdf() throws Exception {
        //生成pdf数据
        List<String> header = new ArrayList<String>();
        // 获取注解字段长度
        int length = fields.size();
        //创建一个PDF
        PdfPTable table = PDFUtil.createTable(length);
        table.addCell(PDFUtil.createHeadCell(this.title, length));

        for (Object[] os : fields) {
            Excel excel = (Excel) os[1];
            table.addCell(PDFUtil.createTitleCell_1(excel.name()));
        }
        if (Excel.Type.EXPORT.equals(type)) {
            table = fillPdfData(table);
        }
        String fileName = encodingFilename(this.title);
        String output = getAbsoluteFile(fileName);
        BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(new File(output)));
        PDFUtil.exportPdf(out, table, "");
        return fileName;
    }

    /**
     * 编码文件名
     */
    public String encodingFilename(String filename) {
        filename = UUID.randomUUID().toString() + "_" + filename + ".pdf";
        return filename;
    }

    /**
     * 获取下载路径
     *
     * @param filename 文件名称
     */
    public String getAbsoluteFile(String filename) {
        // String downloadPath = Global.getDownloadPath() + filename;
        String downloadPath = "D:/ruoyi/uploadPath/" + filename;
        File desc = new File(downloadPath);
        if (!desc.getParentFile().exists()) {
            desc.getParentFile().mkdirs();
        }
        return downloadPath;
    }

    /**
     * 填充Pdf数据
     *
     * @param table PdfPTable
     */
    public PdfPTable fillPdfData(PdfPTable table) {
        for (int i = 0; i < this.list.size(); i++) {
            // 得到导出对象.
            T vo = (T) list.get(i);
            for (Object[] os : fields) {
                Field field = (Field) os[0];
                Excel excel = (Excel) os[1];
                // 设置实体类私有属性可访问
                field.setAccessible(true);
                table = addCell(excel, table, vo, field);
            }
        }
        return table;
    }


    /**
     * 添加单元格
     */
    public PdfPTable addCell(Excel attr, PdfPTable table, T vo, Field field) {

        try {
            // 根据Excel中设置情况决定是否导出,有些情况需要保持为空,希望用户填写这一列.
            if (attr.isExport()) {

                // 用于读取对象中的属性
                Object value = getTargetValue(vo, field, attr);
                String dateFormat = attr.dateFormat();
                String readConverterExp = attr.readConverterExp();
                if (StringUtils.isNotEmpty(dateFormat) && StringUtils.isNotNull(value)) {
                    table.addCell(PDFUtil.createCell_1(DateUtils.parseDateToStr(dateFormat, (Date) value)));
                } else if (StringUtils.isNotEmpty(readConverterExp) && StringUtils.isNotNull(value)) {
                    table.addCell(PDFUtil.createCell_1(convertByExp(String.valueOf(value), readConverterExp)));
                } else {
                    // 设置列类型
                    if (Excel.ColumnType.STRING == attr.cellType()) {
                        table.addCell(PDFUtil.createCell_1(StringUtils.isNull(value) ? attr.defaultValue() : value + attr.suffix()));
                    } else if (Excel.ColumnType.NUMERIC == attr.cellType()) {
                        table.addCell(PDFUtil.createCell_1(value + ""));
                    }
                }
            }
        } catch (Exception e) {
            log.error("导出PDF失败{}", e);
        }
        return table;
    }

    /**
     * 解析导出值 0=男,1=女,2=未知
     *
     * @param propertyValue 参数值
     * @param converterExp  翻译注解
     * @return 解析后值
     * @throws Exception
     */
    public static String convertByExp(String propertyValue, String converterExp) throws Exception {
        try {
            String[] convertSource = converterExp.split(",");
            for (String item : convertSource) {
                String[] itemArray = item.split("=");
                if (itemArray[0].equals(propertyValue)) {
                    return itemArray[1];
                }
            }
        } catch (Exception e) {
            throw e;
        }
        return propertyValue;
    }

    /**
     * 获取bean中的属性值
     *
     * @param vo    实体对象
     * @param field 字段
     * @param excel 注解
     * @return 最终的属性值
     * @throws Exception
     */
    private Object getTargetValue(T vo, Field field, Excel excel) throws Exception {
        Object o = field.get(vo);
        if (StringUtils.isNotEmpty(excel.targetAttr())) {
            String target = excel.targetAttr();
            if (target.indexOf(".") > -1) {
                String[] targets = target.split("[.]");
                for (String name : targets) {
                    o = getValue(o, name);
                }
            } else {
                o = getValue(o, target);
            }
        }
        return o;
    }

    /**
     * 以类的属性的get方法方法形式获取值
     *
     * @param o
     * @param name
     * @return value
     * @throws Exception
     */
    private Object getValue(Object o, String name) throws Exception {
        if (StringUtils.isNotEmpty(name)) {
            Class<?> clazz = o.getClass();
            String methodName = "get" + name.substring(0, 1).toUpperCase() + name.substring(1);
            Method method = clazz.getMethod(methodName);
            o = method.invoke(o);
        }
        return o;
    }

    public void init(List<T> list, String title, Excel.Type type) {
        if (list == null) {
            list = new ArrayList<T>();
        }
        this.list = list;
        this.title = title;
        this.type = type;
        createExcelField();
    }

    /**
     * 得到所有定义字段
     */
    private void createExcelField() {
        this.fields = new ArrayList<Object[]>();
        List<Field> tempFields = new ArrayList<>();
        tempFields.addAll(Arrays.asList(clazz.getSuperclass().getDeclaredFields()));
        tempFields.addAll(Arrays.asList(clazz.getDeclaredFields()));
        for (Field field : tempFields) {
            // 单注解
            if (field.isAnnotationPresent(Excel.class)) {
                putToField(field, field.getAnnotation(Excel.class));
            }

            // 多注解
            if (field.isAnnotationPresent(Excels.class)) {
                Excels attrs = field.getAnnotation(Excels.class);
                Excel[] excels = attrs.value();
                for (Excel excel : excels) {
                    putToField(field, excel);
                }
            }
        }
    }

    /**
     * 放到字段集合中
     */
    private void putToField(Field field, Excel attr) {
        if (attr != null && (attr.type() == Excel.Type.ALL || attr.type() == type)) {
            this.fields.add(new Object[]{field, attr});
        }
    }


    // 表格表头样式1
    public static PdfPCell createTitleCell_1(String value) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setPhrase(new Phrase(value, keyfont));
        cell.setBackgroundColor(new BaseColor(29, 181, 238));
        // cell.setColspan(1);
        // cell.setFixedHeight(35);
        return cell;
    }

    // 表格表头样式2
    public static PdfPCell createTitleCell_2(String value) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setPhrase(new Phrase(value, keyfont));
        cell.setBackgroundColor(new BaseColor(29, 181, 238));
        cell.setColspan(1);
        cell.setRowspan(3);
        cell.setFixedHeight(105);
        return cell;
    }

    // 表格内容样式1
    public static PdfPCell createCell_1(String value) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setPhrase(new Phrase(value, textfont));
        cell.setBackgroundColor(new BaseColor(255, 255, 255));
        cell.setColspan(1);
//		cell.setFixedHeight(35);
        return cell;
    }

    // 表格内容样式2
    public static PdfPCell createCell_2(String value) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setPhrase(new Phrase(value, textfont));
        cell.setBackgroundColor(new BaseColor(255, 255, 255));
        cell.setColspan(1);
        cell.setRowspan(3);
        cell.setFixedHeight(105);
        return cell;
    }

    // 表格内容样式3
    public static PdfPCell createCell_3(String value) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setPhrase(new Phrase(value, textfont));
        cell.setBackgroundColor(new BaseColor(255, 255, 255));
        cell.setColspan(2);
        cell.setFixedHeight(35);
        return cell;
    }

    // 表格内容样式4
    public static PdfPCell createCell_4(String value) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setPhrase(new Phrase(value, textfont));
        cell.setBackgroundColor(new BaseColor(255, 255, 255));
        cell.setColspan(4);
        cell.setRowspan(3);
        cell.setFixedHeight(105);
        return cell;
    }

    // 生成表格
    public static PdfPTable createTable(int colNumber) {
        // int widths[] = { 35,40,35,35,30 };
        int widths[] = new int[colNumber];
        for (int i = 0; i < widths.length; i++) {
            widths[i] = 35 * 5 / colNumber;
        }
        PdfPTable baseTable = new PdfPTable(colNumber);
        baseTable.setWidthPercentage(100);
        baseTable.setSpacingBefore(10);
        try {
            baseTable.setWidths(widths);
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        return baseTable;
    }

    /**
     * @param input   临时文件地址
     * @param out     当浏览器下载时 ：BufferedOutputStream out = getOutputStream(response, fileName, "pdf");
     *                本地测试时：
     *                String output = "C:\\Users\\jinyu\\Desktop\\pdf\\"+new SimpleDateFormat("mmsss").format(new Date())+".pdf";
     *                BufferedOutputStream out = new BufferedOutputStream( new FileOutputStream(new File(output)));
     * @param imgPath 水印图片地址 空时不添加水印
     * @param texMark 水印文字 空时不添加水印
     * @throws Exception
     */
    public static void addmark(String input, BufferedOutputStream out,
                               String imgPath, String texMark) throws Exception {
        try {
            PdfReader reader = new PdfReader(input);
            PdfStamper stamper = new PdfStamper(reader, out);
//			不允许编辑 打印 ======
            byte[] ownerPassword = UUID.randomUUID().toString().replaceAll("-", "").getBytes();
            stamper.setEncryption(null, ownerPassword, PdfWriter.ALLOW_COPY, PdfWriter.ENCRYPTION_AES_128);
            if (StringUtils.isNotEmpty(imgPath)) {
                addPageMark(imgPath, reader, stamper);
            }
            if (StringUtils.isNotEmpty(texMark)) {
                addWatermark(stamper, texMark);
            }
            stamper.close();
            reader.close();
            File file = new File(input);
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void addmark(String input, BufferedOutputStream out, String texMark) throws Exception {
        addmark(input, out, "", texMark);
    }

    /**
     * 添加图片水印
     *
     * @param realPath
     * @param reader
     * @param stamper
     */
    public static void addPageMark(String realPath, PdfReader reader,
                                   PdfStamper stamper) {
        int total = reader.getNumberOfPages();
        try {
            Image image = Image.getInstance(realPath);
            image.setAbsolutePosition(350, 200);
            image.scaleToFit(160, 70);
            PdfContentByte content = stamper.getOverContent(total);// 在内容上方加水印
            content.addImage(image);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static void addWatermark(PdfStamper pdfStamper, String waterMarkName)
            throws Exception {
        PdfContentByte content;
        BaseFont base = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H",
                BaseFont.NOT_EMBEDDED);
        Rectangle pageRect;
        PdfGState gs = new PdfGState();
        try {
            if (base == null || pdfStamper == null) {
                return;
            }
            // 设置透明度为0.4
            gs.setFillOpacity(0.3f);
            gs.setStrokeOpacity(0.3f);
            int toPage = pdfStamper.getReader().getNumberOfPages();
            for (int i = 1; i <= toPage; i++) {
                pageRect = pdfStamper.getReader().getPageSizeWithRotation(i);
                // 计算水印X,Y坐标
                // 获得PDF最顶层
                content = pdfStamper.getOverContent(i);
                content.saveState();
                // set Transparency
                content.setGState(gs);
                content.beginText();
                content.setColorFill(BaseColor.GRAY);
                content.setFontAndSize(base, 20);
                // 水印文字成45度角倾斜
//				float x = pageRect.getWidth() / 2;
//				float y = pageRect.getHeight() / 2;
                int hnum = 4;
                int wnum = 4;
                float h = pageRect.getHeight() / hnum;
                float w = pageRect.getWidth() / wnum;
                for (int k = 1; k < hnum; k++) {
                    for (int j = 1; j < wnum; j++) {
                        content.showTextAligned(Element.ALIGN_CENTER, waterMarkName, w * j, k * h, 45);
                    }
                }
                content.endText();
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    // =============================
    // 表格标题
    public static PdfPCell createHeadCell(String value, int number) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(15);
        cell.setHorizontalAlignment(15);
        // 合并5列
        cell.setColspan(number);
        cell.setPhrase(new Phrase(value, headfont));
        cell.setHorizontalAlignment(Element.ALIGN_CENTER); // 水平居中
        cell.setPadding(10.0f);
        cell.setBorder(0);
        cell.setPaddingTop(5.0f);
        cell.setPaddingBottom(18.0f);
        return cell;
    }

    // 表格内容样式1
    public static PdfPCell createCell(String value) {
        PdfPCell cell = new PdfPCell();
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setPhrase(new Phrase(value, textfont));
        cell.setBackgroundColor(new BaseColor(255, 255, 255));
        cell.setColspan(1);
        // cell.setRowspan(3);
        // cell.setFixedHeight(105);
        cell.setFixedHeight(35);
        return cell;
    }

    // ============================================样式设置

    // ============================================导出 设置=======================

    /**
     * @param out       本地：
     *                  String output = "C:\\Users\\jinyu\\Desktop\\pdf\\"+new SimpleDateFormat("mmsss").format(new Date())+".pdf";
     *                  BufferedOutputStream out =  new BufferedOutputStream( new FileOutputStream(new File(output)));
     *                  action :
     *                  参考 注释 getOutputStream
     * @param pdfPTable 数据
     * @param realPath  水印图片地址
     * @param texmark   水印文字
     * @throws IOException
     * @throws Exception
     */
    public static void exportPdf(BufferedOutputStream out,
                                 PdfPTable pdfPTable, String realPath, String texmark)
            throws IOException, Exception {
        String lsfile = setTableData(pdfPTable);
//		BufferedOutputStream out = getOutputStream(response, fileName, "pdf");
        try {
            PDFUtil.addmark(lsfile, out, realPath, texmark);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (out != null) {
                out.close();
            }
        }
    }

    //不含水印图片
    public static void exportPdf(BufferedOutputStream out,
                                 PdfPTable pdfPTable, String texmark)
            throws IOException, Exception {
        String lsfile = setTableData(pdfPTable);
        try {
            PDFUtil.addmark(lsfile, out, "", texmark);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (out != null) {
                out.close();
            }
        }
    }


    public static void setTableData(PdfPTable table, OutputStream outputStream) {

        try {
            Document document = new Document();// 建立一个Document对象
            Rectangle pageSize = new Rectangle(PageSize.A4.getHeight(), PageSize.A4.getWidth());
            pageSize.rotate();
            document.setPageSize(pageSize);
            PdfWriter writer = PdfWriter.getInstance(document, outputStream);
            PDFBuilder builder = new PDFBuilder();
            writer.setPageEvent(builder);
            document.open();
            document.add(table);
            document.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static String setTableData(PdfPTable table) {
        String out = UUID.randomUUID().toString().replaceAll("-", "") + ".pdf";
        FileOutputStream fileIo = null;
        try {
            Document document = new Document();// 建立一个Document对象
            Rectangle pageSize = new Rectangle(PageSize.A4.getHeight(), PageSize.A4.getWidth());
            pageSize.rotate();
            document.setPageSize(pageSize);
            fileIo = new FileOutputStream(out);
            PdfWriter writer = PdfWriter.getInstance(document, fileIo);
            PDFBuilder builder = new PDFBuilder();
            writer.setPageEvent(builder);
            document.open();
            document.add(table);
            document.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (fileIo != null) {
                try {
                    fileIo.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return out;
    }

    /**
     * 获取需要导出的数据 （简单的）
     *
     * @param list
     * @param search
     * @param header
     * @return
     */
    public static PdfPTable getPdfPTable(List<List<String>> list, String search, List<String> header) {
        int size = header.size();
        // 设置列数
        PdfPTable table = createPdfPTable(size);
        // 设置查询条件
        setPdfPTableSearch(table, search, size);
        // 添加表头数据
        setPdfPTableSimpleHead(table, header);
        setPdfPTableSimpleData(table, list);
        return table;
    }

    // 1、创建 PdfPTable
    public static PdfPTable createPdfPTable(int size) {
        PdfPTable table = PDFUtil.createTable(size);
        return table;
    }

    // 2 、 设置查询条件
    public static PdfPTable setPdfPTableSearch(PdfPTable table, String search,
                                               int size) {
        table.addCell(PDFUtil.createHeadCell(search, size));
        return table;
    }

    // 3 、1 设置 简单表头
    public static PdfPTable setPdfPTableSimpleHead(PdfPTable table, List<String> header) {
        if (header != null && header.size() > 0) {
            for (String str : header) {
                table.addCell(PDFUtil.createCell_1(str));
            }
        }
        return table;
    }

    /**
     * 3 、2 设置 复杂表头
     */
//	public static PdfPTable setPdfPTableComplexHead(PdfPTable table, List<List<ComplexParams>> list) {
//		if (list != null && list.size() > 0) {
//			for (List<ComplexParams> ls : list) {
//				if (ls != null && ls.size() > 0) {
//					for (ComplexParams one : ls) {
//						String name = one.getName();
//						PdfPCell cell = PDFUtil.createCell(name);
//						cell.setColspan(getInt(one.getColspan()));
//						cell.setRowspan(getInt(one.getRowspan()));
//						table.addCell(cell);
//					}
//				}
//			}
//		}
//		return table;
//	}

    // 4.1 设置简单数据
    public static PdfPTable setPdfPTableSimpleData(PdfPTable table, List<List<String>> list) {
        if (list != null && list.size() > 0) {
            for (List<String> ls : list) {
                if (ls != null && ls.size() > 0) {
                    for (String str : ls) {
                        table.addCell(PDFUtil.createCell_1(str));
                    }
                }
            }
        }
        return table;
    }

    /**
     * 4.2 设置合并数据
     *
     * @param table   数据PdfPTable
     * @param list    数据主题
     * @param coIndex 合并注塑机所在列
     * @param cols    多少列
     * @param isrow   是否合并
     * @return
     */
    public static PdfPTable setPdfPTableMergeData(PdfPTable table, List<List<String>> list, int coIndex, int cols, List<Boolean> isrow) {
        List<PdfPCell> box = new ArrayList<PdfPCell>();
        int[] index = getIndex(new int[cols]);
        int rowspan = -1;
        if (list != null && list.size() > 0) {
            for (int i = 0; i < list.size(); i++) {
                List<String> list2 = list.get(i);
                if (list2 != null && list2.size() > 0) {
                    for (int j = 0; j < list2.size(); j++) {
                        String value = list2.get(j);
                        PdfPCell createCell = createCell(value);
                        Boolean boolean1 = isrow.get(j);
                        if (j == coIndex) {
                            int rowspan2 = getRowspan(list, i, j, value, 0, true);
                            //System.out.println(value);
                            //System.out.println("rowspan2--"+rowspan2);
                            //第一次调用
                            if (rowspan == -1) {
                                if (rowspan2 == 1) {
                                    table.addCell(createCell);
                                    rowspan = 1;
                                } else {
                                    rowspan = rowspan2;
                                    index[j] = i + rowspan2 - 1;
                                    createCell.setRowspan(rowspan2);
                                    createCell.setFixedHeight(rowspan2 * 35);
                                    box.add(createCell);
                                }
                            } else if (rowspan == 1) {
                                if (rowspan2 == 1) {
                                    table.addCell(createCell);
                                    rowspan = 1;
                                } else {
                                    rowspan = rowspan2;
                                    index[j] = i + rowspan2 - 1;
                                    createCell.setRowspan(rowspan2);
                                    createCell.setFixedHeight(rowspan2 * 35);
                                    box.add(createCell);
                                }
                            } else {
                                int l = index[j];
                                if (l == -1) {
                                    if (rowspan2 == 1) {
                                        table.addCell(createCell);
                                    } else {
                                        index[j] = i + rowspan2 - 1;
                                        createCell.setRowspan(rowspan2);
                                        createCell.setFixedHeight(rowspan2 * 35);
                                        box.add(createCell);
                                    }
                                } else {
//									if(i==index[j]){
//										index[j] = -1;
//									}
                                }
                            }
                        } else if (j > coIndex) {
                            if (boolean1) {
                                if (rowspan <= 1) {
                                    table.addCell(createCell);
                                } else {
                                    int l = index[j];
                                    int rowspan2 = getRowspan(list, i, j, value, rowspan, false);
                                    if (l == -1) {
                                        if (rowspan2 == 1) {
                                            box.add(createCell);
                                        } else {
                                            index[j] = i + rowspan2 - 1;
                                            createCell.setRowspan(rowspan2);
                                            createCell.setFixedHeight(rowspan2 * 35);
                                            box.add(createCell);
                                        }
                                    } else {
                                        if (i == index[j]) {
                                            index[j] = -1;
                                        }
                                    }
                                }
                            } else {
                                if (rowspan <= 1) {
                                    table.addCell(createCell);
                                } else {
                                    box.add(createCell);
                                }

                            }

                            //到最后一列
                            if (index[coIndex] == i && j == list2.size() - 1) {
                                index = getIndex(index);
                                if (box != null && box.size() > 0) {
                                    for (int k = 0; k < box.size(); k++) {
                                        PdfPCell pdfPCell = box.get(k);
                                        table.addCell(pdfPCell);
                                        ;
                                    }
                                }
                                //重置
                                box = new ArrayList<PdfPCell>();
                                rowspan = -1;
                            }

                        } else {
                            if (rowspan <= 1) {
                                table.addCell(createCell);
                            } else {
                                box.add(createCell);
                            }
                        }
                    }
                }

            }
        }
        return table;
    }

    private static int[] getIndex(int[] index) {
        for (int i = 0; i < index.length; i++) {
            index[i] = -1;
        }
        return index;
    }

    /**
     * 行列的值最少是1
     *
     * @param str
     * @return
     */
    public static int getInt(String str) {
        int re = 1;
        try {
            re = Integer.parseInt(str);
        } catch (Exception e) {
        }
        return re;
    }

    /**
     * @param list  数据
     * @param hang  第几行
     * @param lie   第几列
     * @param value 当前列的值
     * @param limit 第一行合并数
     * @param fla   是否是第一行
     * @return
     */
    public static int getRowspan(List<List<String>> list, int hang, int lie, String value, int limit, boolean fla) {
        int coun = 1;
        for (int i = hang + 1; i < list.size(); i++) {
            String check = "";
            List<String> list2 = list.get(i);
            if (list2 != null && list2.size() > 0) {
                if (StringUtils.isNotEmpty(list2.get(lie))) {
                    check = list2.get(lie);
                }
            }
            if (value.endsWith(check)) {
                coun++;
            } else {
                if (!fla && coun > limit) {
                    coun = limit;
                }
                return coun;
            }
        }
        if (!fla && coun > limit) {
            coun = limit;
        }
        return coun;
    }
}