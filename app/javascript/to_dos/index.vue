<template>
  <el-table
    :data="toDos"
    style="width: 100%">
    <el-table-column
      prop="title"
      width="180">
    </el-table-column>
    <el-table-column
      prop="expired_at">
    </el-table-column>
    <el-button type="danger" icon="el-icon-delete" circle></el-button>
  </el-table>
</template>
<script>
  import axios from 'axios'
    export default {
      data() {
        return {
         toDos: [] 
        }
      },
      created() {
        axios.get('/api/v1/to_dos')
        .then(res =>{
          this.toDos = res.data
        })
      }
    }
</script>