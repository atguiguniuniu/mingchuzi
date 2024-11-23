<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="供应商名称" prop="providername">
        <el-input
          v-model="queryParams.providername"
          placeholder="请输入供应商名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="法定代表人姓名" prop="juridicalperson">
        <el-input
          v-model="queryParams.juridicalperson"
          placeholder="请输入法定代表人姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="到期日期" prop="expirationdate">
        <el-input
          v-model="queryParams.expirationdate"
          placeholder="请输入到期日期"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="城市" prop="city">
        <el-input
          v-model="queryParams.city"
          placeholder="请输入城市"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="区域" prop="district">
        <el-input
          v-model="queryParams.district"
          placeholder="请输入区域"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="联系电话" prop="providerphone">
        <el-input
          v-model="queryParams.providerphone"
          placeholder="请输入联系电话"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="地区" prop="area">
        <el-input
          v-model="queryParams.area"
          placeholder="请输入地区"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['providerinfo:providerinfo:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['providerinfo:providerinfo:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['providerinfo:providerinfo:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['providerinfo:providerinfo:export']"
        >导出</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExportPdf"
          v-hasPermi="['providerinfo:providerinfo:export']"
        >打印</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="zhu"
        >柱状图</el-button>
      </el-col>
      
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="providerinfoList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="社会信用代码" align="center" prop="socialcreditcode" :sortable="true"/>
      <el-table-column label="供应商名称" align="center" prop="providername" />
      <el-table-column label="供应商地址" align="center" prop="location" />
      <el-table-column label="法定代表人姓名" align="center" prop="juridicalperson" />
      <el-table-column label="经营范围" align="center" prop="businessscope" />
      <el-table-column label="到期日期" align="center" prop="expirationdate" />
      <el-table-column label="城市" align="center" prop="city" />
      <el-table-column label="区域" align="center" prop="district" />
      <el-table-column label="联系电话" align="center" prop="providerphone" />
      <el-table-column label="地区" align="center" prop="area" />
      <el-table-column label="照片" align="center" prop="photopath" width="100">
        <template slot-scope="scope">
          <image-preview :src="scope.row.photopath" :width="50" :height="50"/>
        </template>
      </el-table-column>
      
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleSelect(scope.row)"
            v-hasPermi="['providerinfo:providerinfo:query']"
          >查看详情</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['providerinfo:providerinfo:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['providerinfo:providerinfo:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改供应商信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="社会信用代码" prop="socialcreditcode">
          <el-input v-model="form.socialcreditcode" placeholder="请输入社会信用代码" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="供应商名称" prop="providername">
          <el-input v-model="form.providername" placeholder="请输入供应商名称" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="供应商地址" prop="location">
          <el-input v-model="form.location" placeholder="请输入供应商地址" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="法定代表人姓名" prop="juridicalperson">
          <el-input v-model="form.juridicalperson" placeholder="请输入法定代表人姓名" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="经营范围" prop="businessscope">
          <el-input v-model="form.businessscope" placeholder="请输入经营范围" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="到期日期" prop="expirationdate">
          <el-input v-model="form.expirationdate" placeholder="请输入到期日期" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="城市" prop="city">
          <el-input v-model="form.city" placeholder="请输入城市" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="区域" prop="district">
          <el-input v-model="form.district" placeholder="请输入区域" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="联系电话" prop="providerphone">
          <el-input v-model="form.providerphone" placeholder="请输入联系电话" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="地区" prop="area">
          <el-input v-model="form.area" placeholder="请输入地区" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="照片" prop="photopath">
          <image-upload v-model="form.photopath" :disabled="isSelect"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer" v-if="!isSelect">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listProviderinfo, getProviderinfo, delProviderinfo, addProviderinfo, updateProviderinfo, postExportPdf } from "@/api/providerinfo/providerinfo";

export default {
  name: "Providerinfo",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 供应商信息表格数据
      providerinfoList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      isSelect: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        providername: null,
        location: null,
        juridicalperson: null,
        businessscope: null,
        expirationdate: null,
        photopath: null,
        city: null,
        district: null,
        providerphone: null,
        area: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询供应商信息列表 */
    getList() {
      this.loading = true;
      listProviderinfo(this.queryParams).then(response => {
        this.providerinfoList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        socialcreditcode: null,
        providername: null,
        location: null,
        juridicalperson: null,
        businessscope: null,
        expirationdate: null,
        photopath: null,
        city: null,
        district: null,
        providerphone: null,
        area: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加供应商信息";
      this.isSelect = false;

    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getProviderinfo(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改供应商信息";
        this.isSelect = false;
      });
    },
    /** 修改按钮操作 */
    handleSelect(row) {
      this.reset();
      const id = row.id || this.ids
      getProviderinfo(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "查看供应商信息";
        this.isSelect = true;
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateProviderinfo(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addProviderinfo(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除供应商信息？').then(function() {
        return delProviderinfo(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('providerinfo/providerinfo/export', {
        ...this.queryParams
      }, `providerinfo_${new Date().getTime()}.xlsx`)
    },
    /** 导出按钮操作 */
    handleExportPdf() {
      postExportPdf()
      .then((res)=>{
        console.log(res.msg);
        
        const a = document.createElement('a')
        a.setAttribute('download', '供应商信息_'+new Date().getTime())
        a.setAttribute('target', '_blank')
        a.setAttribute('href', 'http://127.0.0.1:8080/profile/'+res.msg)
        a.click()
          
      })
    },
    zhu(){
      this.$router.replace({name:'zhu'});
    }
  }
};
</script>
