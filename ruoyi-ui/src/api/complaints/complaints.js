import request from '@/utils/request'

// 查询投诉信息列表
export function listComplaints(query) {
  return request({
    url: '/complaints/complaints/list',
    method: 'get',
    params: query
  })
}

// 查询投诉信息详细
export function getComplaints(id) {
  return request({
    url: '/complaints/complaints/' + id,
    method: 'get'
  })
}

// 新增投诉信息
export function addComplaints(data) {
  return request({
    url: '/complaints/complaints',
    method: 'post',
    data: data
  })
}

// 修改投诉信息
export function updateComplaints(data) {
  return request({
    url: '/complaints/complaints',
    method: 'put',
    data: data
  })
}

// 删除投诉信息
export function delComplaints(id) {
  return request({
    url: '/complaints/complaints/' + id,
    method: 'delete'
  })
}
