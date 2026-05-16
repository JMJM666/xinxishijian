import { createRouter, createWebHistory } from 'vue-router'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    { path: '/', redirect: '/manager/home' },
    {
      path: '/manager',
      component: () => import('@/views/Manager.vue'),
      children: [
        { path: 'home', meta: { name: '系统首页' }, component: () => import('@/views/manager/Home.vue'),  },
        { path: 'admin', meta: { name: '管理员信息' }, component: () => import('@/views/manager/Admin.vue'), },
        { path: 'notice', meta: { name: '系统公告' }, component: () => import('@/views/manager/Notice.vue'), },
        { path: 'person', meta: { name: '个人资料' }, component: () => import('@/views/manager/Person.vue'), },
        { path: 'password', meta: { name: '修改密码' }, component: () => import('@/views/manager/Password.vue'), },
        { path: 'user', meta: { name: '用户信息' }, component: () => import('@/views/manager/User.vue'), },
        { path: 'doctor', meta: { name: '心理医生信息' }, component: () => import('@/views/manager/Doctor.vue'), },
        { path: 'doctorAuthentication', meta: { name: '资格认证' }, component: () => import('@/views/manager/DoctorAuthentication.vue'), },
        { path: 'propagate', meta: { name: '心理健康宣传' }, component: () => import('@/views/manager/Propagate.vue'), },
        { path: 'sideshow', meta: { name: '轮播图管理' }, component: () => import('@/views/manager/Sideshow.vue'), },
      ]
    },
    {
      path: '/front',
      component: () => import('@/views/Front.vue'),
      children: [
        { path: 'home', component: () => import('@/views/front/Home.vue'),  },
        { path: 'person', component: () => import('@/views/front/Person.vue'),  },
        { path: 'password', component: () => import('@/views/front/Password.vue'),  },
        { path: 'doctor', component: () => import('@/views/front/Doctor.vue'),  },
        { path: 'Propagate', component: () => import('@/views/front/Propagate.vue'),  },
        { path: 'PropagateDetail', component: () => import('@/views/front/PropagateDetail.vue'),  },
      ]
    },
    { path: '/login', component: () => import('@/views/Login.vue') },
    { path: '/register', component: () => import('@/views/Register.vue') },
    { path: '/404', component: () => import('@/views/404.vue') },
    { path: '/:pathMatch(.*)', redirect: '/404' }
  ]
})

export default router
