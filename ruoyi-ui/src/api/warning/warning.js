import request from '@/utils/request'

// 查询风险预警列表
export function listWarning(query) {
  return request({
    url: '/warning/warning/list',
    method: 'get',
    params: query
  })
}

// 查询风险预警详细
export function getWarning(id) {
  return request({
    url: '/warning/warning/' + id,
    method: 'get'
  })
}

// 新增风险预警
export function addWarning(data) {
  return request({
    url: '/warning/warning',
    method: 'post',
    data: data
  })
}

// 修改风险预警
export function updateWarning(data) {
  return request({
    url: '/warning/warning',
    method: 'put',
    data: data
  })
}

// 删除风险预警
export function delWarning(id) {
  return request({
    url: '/warning/warning/' + id,
    method: 'delete'
  })
}
