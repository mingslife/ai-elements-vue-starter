import { createWebHistory, createRouter } from 'vue-router'

const routes = [
  { path: '/', component: () => import('@/pages/index.vue') },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
})

export default router
