import request from '@/utils/request'

// 查询供应商信息列表
export function listProviderinfo(query) {
  return request({
    url: '/providerinfo/providerinfo/list',
    method: 'get',
    params: query
  })
}


// 查询供应商信息详细
export function listTCount(query) {
  return request({
    url: '/providerinfo/providerinfo/listCount',
    method: 'get',
    params: query
  })
}

// 查询供应商信息详细
export function getProviderinfo(id) {
  return request({
    url: '/providerinfo/providerinfo/' + id,
    method: 'get'
  })
}


// 新增供应商信息
export function addProviderinfo(data) {
  return request({
    url: '/providerinfo/providerinfo',
    method: 'post',
    data: data
  })
}

// 修改供应商信息
export function updateProviderinfo(data) {
  return request({
    url: '/providerinfo/providerinfo',
    method: 'put',
    data: data
  })
}

// 删除供应商信息
export function delProviderinfo(id) {
  return request({
    url: '/providerinfo/providerinfo/' + id,
    method: 'delete'
  })
}


// 删除供应商信息
export function postExportPdf() {
  return request({
    url: '/providerinfo/providerinfo/exportPdf',
    method: 'post'
  })
}
