<template>
  <div>
    <!--  轮播图信息  -->
    <div style="margin-top: 10px">
      <el-carousel height="350px" interval="2000">
        <el-carousel-item v-for="item in data.sideshowData" :key="item.id">
          <img :src="item.img" alt="" style="height: 350px">
        </el-carousel-item>
      </el-carousel>
    </div>
    <!--  心理健康宣传  -->
    <div style="padding: 40px 0">
      <div style="width: 60%; margin: 0 auto; display: flex; align-items: center">
        <div style="font-size: 24px; width: 180px; font-weight: bold; color: #0b8bff">心理健康宣传</div>
        <div style="font-size: 18px; color: #8c939d; margin-left: 20px; flex: 1">心理健康宣传 必不可少</div>
        <div style="width: 120px; color: #666666; font-size: 15px; cursor: pointer">更多健康宣传 >></div>
      </div>
      <div style="width: 60%; margin: 20px auto">
        <el-row :gutter="10">
          <el-col :span="16">
            <div class="card" v-for="item in data.propagateData" style="margin-bottom: 10px; display: flex; padding: 20px">
              <img :src="item.img" alt="" style="width: 180px; height: 120px">
              <div style="flex: 1; margin-left: 10px">
                <div style="font-size: 18px; font-weight: bold">{{ item.title }}</div>
                <div style="margin-top: 10px; color: #666666" class="line3">{{ item.content }}</div>
                <div style="margin-top: 12px; display: flex; align-items: center">
                  <img :src="item.doctorAvatar" alt="" style="width: 20px; height: 20px; border-radius: 50%">
                  <div style="margin-left: 5px">{{ item.doctorName }}</div>
                  <div style="margin-left: 30px">浏览数：{{ item.num }}</div>
                </div>
              </div>
            </div>
          </el-col>
          <el-col :span="8">
            <div class="card">

            </div>
          </el-col>
        </el-row>
      </div>
    </div>
    <!--  心理测试信息  -->
    <div>

    </div>
    <!--  心理医生信息  -->
    <div>

    </div>
  </div>
</template>

<script setup>
import {reactive} from "vue";
import request from "@/utils/request.js";
import {ElMessage} from "element-plus";

const data = reactive({
  sideshowData: [],
  propagateData: [],
})

const loadSideshow = () => {
  request.get('/sideshow/selectAll').then(res => {
    if (res.code === '200') {
      data.sideshowData = res.data
    } else {
      ElMessage.error(res.msg)
    }
  })
}
const loadPropagate = () => {
  request.get('/propagate/selectTop3').then(res => {
    if (res.code === '200') {
      data.propagateData = res.data
    } else {
      ElMessage.error(res.msg)
    }
  })
}
loadSideshow()
loadPropagate()
</script>
<style scoped>
.line3 {
  word-break: break-all;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 3; /* 超出几行省略 */
  overflow: hidden;
}
</style>