<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="商家名称" prop="complaintMerchant">
        <el-input
          v-model="queryParams.complaintMerchant"
          placeholder="请输入商家名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      
      
      <el-form-item label="处理投诉人员姓名" prop="inCharge">
        <el-input
          v-model="queryParams.inCharge"
          placeholder="请输入处理投诉人员姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      
      
      <el-form-item label="投诉日期" prop="complainDate">
        <el-date-picker clearable
          v-model="queryParams.complainDate"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择投诉日期">
        </el-date-picker>
      </el-form-item>
      
      <el-form-item label="投诉人姓名" prop="complainant">
        <el-input
          v-model="queryParams.complainant"
          placeholder="请输入投诉人姓名"
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
          v-hasPermi="['complaints:complaints:add']"
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
          v-hasPermi="['complaints:complaints:edit']"
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
          v-hasPermi="['complaints:complaints:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['complaints:complaints:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="complaintsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="id" />
      <el-table-column label="商家名称" align="center" prop="complaintMerchant" :sortable="true"/>
      <el-table-column label="商家地址" align="center" prop="merchantAddress" />
      <el-table-column label="商家信息的ID" align="center" prop="merchantInfoId" />
      <el-table-column label="投诉人电话号码" align="center" prop="complainantPhone" />
      <el-table-column label="处理投诉人员姓名" align="center" prop="inCharge" />
      <el-table-column label="处理投诉人员电话号码" align="center" prop="inChargephone" />
      <el-table-column label="投诉描述" align="center" prop="complainComment" />
      <el-table-column label="照片" align="center" prop="complainPhoto" width="100">
        <template slot-scope="scope">
          <image-preview :src="scope.row.complainPhoto" :width="50" :height="50"/>
        </template>
      </el-table-column>
      <el-table-column label="处理结果" align="center" prop="responseComplaint" />
      <el-table-column label="投诉日期" align="center" prop="complainDate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.complainDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="投诉是否已处理" align="center" prop="ifHandle" />
      <el-table-column label="投诉人姓名" align="center" prop="complainant" />
      <el-table-column label="商家电话号码" align="center" prop="merchantPhone" />
      <el-table-column label="城市" align="center" prop="city" />
      <el-table-column label="区域" align="center" prop="district" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-select"
            @click="handleSelect(scope.row)"
            v-hasPermi="['complaints:complaints:query']"
          >查看详情</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['complaints:complaints:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['complaints:complaints:remove']"
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

    <!-- 添加或修改投诉信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="商家名称" prop="complaintMerchant">
          <el-input v-model="form.complaintMerchant" placeholder="请输入商家名称" :disabled="isSelect" />
        </el-form-item>
        <el-form-item label="商家地址" prop="merchantAddress">
          <el-input v-model="form.merchantAddress" placeholder="请输入商家地址" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="商家信息的ID" prop="merchantInfoId">
          <el-input v-model="form.merchantInfoId" placeholder="请输入商家信息的ID" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="投诉人电话号码" prop="complainantPhone">
          <el-input v-model="form.complainantPhone" placeholder="请输入投诉人电话号码" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="处理投诉人员姓名" prop="inCharge">
          <el-input v-model="form.inCharge" placeholder="请输入处理投诉人员姓名" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="处理投诉人员电话号码" prop="inChargephone">
          <el-input v-model="form.inChargephone" placeholder="请输入处理投诉人员电话号码" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="投诉描述" prop="complainComment">
          <el-input v-model="form.complainComment" placeholder="请输入投诉描述" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="照片" prop="complainPhoto">
          <image-upload v-model="form.complainPhoto" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="处理结果" prop="responseComplaint">
          <el-input v-model="form.responseComplaint" placeholder="请输入处理结果" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="投诉日期" prop="complainDate">
          <el-date-picker clearable
          :disabled="isSelect"
            v-model="form.complainDate"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择投诉日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="投诉是否已处理" prop="ifHandle">
          <el-input v-model="form.ifHandle" placeholder="请输入投诉是否已处理" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="投诉人姓名" prop="complainant">
          <el-input v-model="form.complainant" placeholder="请输入投诉人姓名" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="商家电话号码" prop="merchantPhone">
          <el-input v-model="form.merchantPhone" placeholder="请输入商家电话号码" :disabled="isSelect"/>
        </el-form-item>
        <el-form-item label="城市" prop="city">
          <el-input v-model="form.city" placeholder="请输入城市" :disabled="isSelect" />
        </el-form-item>
        <el-form-item label="区域" prop="district">
          <el-input v-model="form.district" placeholder="请输入区域" :disabled="isSelect"/>
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
import { listComplaints, getComplaints, delComplaints, addComplaints, updateComplaints } from "@/api/complaints/complaints";

export default {
  name: "Complaints",
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
      // 投诉信息表格数据
      complaintsList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      isSelect: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        complaintMerchant: null,
        merchantAddress: null,
        merchantInfoId: null,
        complainantPhone: null,
        inCharge: null,
        inChargephone: null,
        complainComment: null,
        complainPhoto: null,
        responseComplaint: null,
        complainDate: null,
        ifHandle: null,
        complainant: null,
        merchantPhone: null,
        city: null,
        district: null
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
    /** 查询投诉信息列表 */
    getList() {
      this.loading = true;
      listComplaints(this.queryParams).then(response => {
        this.complaintsList = response.rows;
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
        complaintMerchant: null,
        merchantAddress: null,
        merchantInfoId: null,
        complainantPhone: null,
        inCharge: null,
        inChargephone: null,
        complainComment: null,
        complainPhoto: null,
        responseComplaint: null,
        complainDate: null,
        ifHandle: null,
        complainant: null,
        merchantPhone: null,
        city: null,
        district: null
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
      this.title = "添加投诉信息";
      this.isSelect = false;
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getComplaints(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改投诉信息";
        this.isSelect = false;
      });
    },
    /** 修改按钮操作 */
    handleSelect(row) {
      this.reset();
      const id = row.id || this.ids
      getComplaints(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "查看投诉信息";
        this.isSelect = true;
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateComplaints(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addComplaints(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除投诉信息编号为"' + ids + '"的数据项？').then(function() {
        return delComplaints(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('complaints/complaints/export', {
        ...this.queryParams
      }, `complaints_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
