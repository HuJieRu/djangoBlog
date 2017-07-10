<template>
  <div class="postlist">
     <div>
        <div class="borderStyle container">
          <h1 class="title">最近文章</h1>
          <div class="content">
            <article class='article'>
                <h2><a >memcached指令汇总 && stats/stats slabs指令详解</a></h2>
                <p>memcache是一套分布式的高速缓存系统。
                  在我第一次听到memcache和memcached的区别这个问题时，
                  我想，不就是mysql和mysqld的区别吗。后来发现我错了，
                  mysql和mysqld分别是mysql客户端和服务端的程序命令。
                  但memcache却不是这样。 memcache和memcached区别不大，
                  memcached比memcache多了</p>
                <time>2017年1月11日</time>
            </article> 
            <article class='article'>
                <h2><a>memcached指令汇总 && stats/stats slabs指令详解</a></h2>
                <p>memcache是一套分布式的高速缓存系统。
                  在我第一次听到memcache和memcached的区别这个问题时，
                  我想，不就是mysql和mysqld的区别吗。后来发现我错了，
                  mysql和mysqld分别是mysql客户端和服务端的程序命令。
                  但memcache却不是这样。 memcache和memcached区别不大，
                  memcached比memcache多了</p>
                <time>2017年1月11日</time>
            </article> 
          </div>
      
      </div>
      <div class="block">
        <el-pagination
          layout="prev,pager, next"
          :total="150"
         
          >
        </el-pagination>
      </div>
    </div> 
  </div>
</template>

<script>
import { Pagination } from 'element-ui'
export default {
  name: 'postlist',
  components:{
     'el-pagination':Pagination,
    
  },
  data () {
    return {

    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.postlist .block{
  display: flex;
  justify-content: center;
}
 .article{
	margin-bottom: 20px;
    padding-bottom: 20px;
    border-bottom: 1px solid #eee;
}
 .article > h2 a {
    color: #444444;
}

 .article > h2 a:hover {
    color: #1685a9;
}
 .article>p{
    margin: 10px 0;
    color: #696969;
    line-height: 24px;
    letter-spacing: 1px;
 }
 .article>time{
	line-height: 35px;
	color: #8f8f8f;
	letter-spacing: 1px;
}
</style>
