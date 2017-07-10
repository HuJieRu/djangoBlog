<template>
  <div class="rightbox">
     <div class='boxs'>
        <div class="borderStyle" id='slogan'>学海无涯,宁静致远。</div>
            <div class="borderStyle">
                <p class="title">分类目录</p>
                <ul class='classify'>
                    <li>
                        <a>Apache</a>(3)
                    </li>
                        <li>
                        <a>Linux</a>(3)
                        <ul class='children'>
                            <li>
                                <a>Linux软件环境</a>(3)
                                <ul class='children'>
                                    <li>
                                    <a>Linux软件环境</a>(3)
                                    </li>
                                        <li>
                                    <a>Linux软件环境</a>(3)
                                    </li>
                                </ul>
                            </li>
                                <li>
                                <a>Linux软件环境</a>(3)
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a>Apache</a>(3)
                    </li>
                </ul>
            </div>
            <div class="borderStyle">
                <p class="title">文章归档</p>
                <ul class='classify'>
                    <li>
                        <a>2017年二月</a>(3)
                    </li>
                        <li>
                        <a>2017年一月</a>(3)
                    </li>
                    <li>
                        <a>2016年十二月</a>(3)
                    </li>
                </ul>
            </div>
                <div class="borderStyle">
                <p class="title">近期文章</p>
                <ul class='classify'>
                    <li>
                         <router-link to="/postlist">memcached指令汇总 &amp;&amp; stats/stats slabs指令详解</router-link>
                    </li>
                        <li>
                         <router-link to="/postlist">memcached启动命令参数列表</router-link>
                    </li>
                </ul>
            </div>
            <app-calendar ></app-calendar >
            <div ><img class="borderStyle" :src="bottomSrc"/></div>
        </div>
  </div>
</template>

<script>
import bottomSrc from '../assets/bottom.jpg'
import Calendar from './Calendar.vue'
import {mapState,  mapActions , mapMutations} from 'vuex'
export default {
  name: 'rightbox',
  components: {
    'app-calendar':Calendar,
  },
  data () {
    return {
     bottomSrc:bottomSrc
    }
  },computed: {
    ...mapState({
     
    
    })
  },
  methods:{
    ...mapActions([
        'getRightboxContent',
      
    ]),
    
  },
created:function(){
  
    this.getRightboxContent('get_rightbox_content');
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
 #slogan{
	padding: 25px;
	font-size: 14px;
	margin: 0;
}
 .boxs>div{
	margin-top: 20px;
}
 .boxs ul{
	list-style: none;
}
 .classify>li{
	border-bottom: 1px solid #eee;
}
 .classify a{
	color: rgba(0, 0, 0, 0.5);
	line-height: 18px;
	display: inline-block;
	padding: 13px;
	margin-right: 5px;
}

 .classify a:hover{
	color: #FFF;
	background-color: #44cef6;
}
 .classify .children{
	margin-left: 20px;
}
 .classify .children{
	margin-left: 20px;
}
</style>
