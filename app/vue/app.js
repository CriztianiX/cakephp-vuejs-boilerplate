import { createApp } from "vue"

import Sample from './Component/Sample'

const app = createApp({
    data() {
      return { count: 4 }
    }
}).component('Sample', Sample)
  
const vm = app.mount('#app')