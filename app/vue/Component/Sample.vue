<template>
    <div>Hello from Sample Component</div>
</template>

<script>
import { ref, computed } from "vue";
export default {
  name: 'Sample',
  setup() {
    const randomValue = ref(0);
    const times = ref([]);
    function generate() {
      randomValue.value = Math.floor(Math.random() * Math.floor(9)) + 1;
      times.value.unshift(randomValue.value);
    }
    function init() {
      randomValue.value=0
      times.value = [];
    }
    const total = computed(() => {
      let t = 0;
      for (let i=0 ; i< times.value.length; i++) {
        t += times.value[i]
      }
      return t;
    });
    return { randomValue, times, total, generate, init };
  }
}
</script>