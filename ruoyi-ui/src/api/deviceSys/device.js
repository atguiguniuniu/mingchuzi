import request from '@/utils/request'

// 查询设备信息列表
export function listDevice(query) {
  return request({
    url: '/deviceSys/device/list',
    method: 'get',
    params: query
  })
}

// 查询设备信息详细
export function getDevice(id) {
  return request({
    url: '/deviceSys/device/' + id,
    method: 'get'
  })
}

// 新增设备信息
export function addDevice(data) {
  return request({
    url: '/deviceSys/device',
    method: 'post',
    data: data
  })
}

export function getDeviceCountByCreator() {
  return request({
    url: '/deviceSys/device/count',
    method: 'get',
  });
}

// 修改设备信息
export function updateDevice(data) {
  return request({
    url: '/deviceSys/device',
    method: 'put',
    data: data
  })
}

// 删除设备信息
export function delDevice(id) {
  return request({
    url: '/deviceSys/device/' + id,
    method: 'delete'
  })
}
