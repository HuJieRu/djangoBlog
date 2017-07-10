<template>
  <div class="tabnavigation">
    <div class='borderStyle tabNavigation'>
          <div class='head'>
          
              <img class='defaultImg' :src='logoSrc' />
              <h1 >
                  <a >Mayer</a>
              </h1>
          </div>
          <p class='content'>之旅</p>
          <div class='centerItems'>
              <div>
                  <router-link to="/"><span>{{count.article}}</span><i class="iconfont icon-wenzhang"></i></router-link>
                  <div   class='tooltip'>
                        <span class='triangle'></span>
                      <span class='text'>文章</span>
                  </div> 
              </div>
              <div>
                  <router-link to="/category"><span>{{count.articleClassify}}</span><i class="iconfont icon-fenlei"></i></router-link>
                  <div   class='tooltip'>
                        <span class='triangle'></span>
                      <span class='text'>分类</span>
                  </div> 
              </div>
              <div>
                  <router-link to="/tags"><span>{{count.tag}}</span><i class="iconfont icon-biaoqian"></i></router-link>
                  <div   class='tooltip'>
                        <span class='triangle'></span>
                      <span class='text'>标签 </span>
                  </div> 
              </div>
          </div>
          <ul class='bottomItems'>
              <router-link to="/category"><li>分类</li></router-link>
              <router-link to="/tags"><li>标签</li></router-link>
          </ul>
          <form  class='searchform' method="get" action="">
              <input   placeholder="搜索一下" type="text">
          </form>
      </div>
  </div>
</template>

<script>
import logoSrc from '../assets/default.jpg'
// 导入vuex
import {mapState,  mapActions , mapMutations} from 'vuex'


export default {
  name: 'tabnavigation',
  data () {
    return {
     logoSrc:logoSrc
    }
 
  },
   computed: {
    ...mapState({
     
     count:state=>state.TabnavigationStore.count
    })
  },
  methods:{
    ...mapActions([
        'getCount'
    ]),
   
  },
created:function(){
    this.getCount('get_count');
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  .tabNavigation{
	text-align: center;
}
 .head{
	position: relative;
	margin: 0 35px 10px;
}
 .head::after {
    content: '';
    position: absolute;
    bottom: -5px;
    left: 0;
    height: 1px;
    width: 100%;
    background: rgba(0, 0, 0, 0.4);
    -moz-transform: scaleX(1);
    -webkit-transform: scaleX(1);
    -o-transform: scaleX(1);
    -ms-transform: scaleX(1);
	transform: scaleX(1);
    -moz-transition: all 0.2s ease-in;
    -webkit-transition: all 0.2s ease-in;
    -o-transition: all 0.2s ease-in;
    -ms-transition: all 0.2s ease-in;
    transition: all 0.2s ease-in;
}
 .head:hover::after {
     -moz-transform: scale(0);
    -webkit-transform: scale(0);
    -o-transform: scale(0);
    -ms-transform: scale(0);
	transform: scale(0);
}

 .head .defaultImg{
	margin: 28px 0 10px;
	max-width: 100px;
	border: 1px solid #eee;
	border-radius: 100%;
}

 .head .h1{
	margin: 0 35px;
}
 .head .h1>a{
	color: rgba(0, 0, 0, 0.8);
	font-size: 20px;
	font-weight: 400;
}

 .centerItems{
	padding: 20px;
	display: flex;
	justify-content: space-around;
}
 .centerItems>div{
	flex: 1;
	position: relative;
	margin:0 auto;
}

 .centerItems>div+div{
	border-left: 1px solid #ccc;
}

 .centerItems>div .tooltip{
	position: absolute;
	width: 100%;
	right: 0;
	bottom: -33px;
	font-size: 12px;
	display: none;
}

 .centerItems>div .tooltip .text{
    background-color: #666;
    color: #fff;
    padding: 5px;
    border-radius: 4px;
}
 .centerItems>div .tooltip .triangle{
    width: 0;
    height: 0;
    border-left: 3px solid transparent;
    border-right: 3px solid transparent;
    border-bottom: 6px solid #666;
}

 .centerItems>div:hover .tooltip{
	display: flex;
	flex-direction: column;
	align-items: center;
}
 .centerItems a{
	color: rgba(0, 0, 0, 0.6);
	display: flex;
	flex-direction: column;
	flex: 1;
    -moz-transition: all 0.2s ease-in;
    -webkit-transition: all 0.2s ease-in;
    -o-transition: all 0.2s ease-in;
    -ms-transition: all 0.2s ease-in;
    transition: all 0.2s ease-in;
}

 .centerItems a:hover{
	-moz-transform: scale(1.2);
    -webkit-transform: scale(1.2);
    -o-transform: scale(1.2);
    -ms-transform: scale(1.2);
	transform: scale(1.2);
	color: #1685A9;
}
 .bottomItems{
	list-style: none;
}
 .bottomItems>a, .searchform{
	color: rgba(0, 0, 0, 0.6);
	border-top: 1px solid #eee;
	display: flex;
	justify-content: center;
	padding: 10px 0;
}

 .bottomItems>a:hover, .searchform:hover{
	color:#fff;
	background-color: #44cef6;
}
 .bottomItems>a:hover, .searchform:hover{
	color:#fff;
	background-color: #44cef6;
}
 .searchform>input{
	border: none;
	border-radius: 0;
	text-align: center;
	color: #888 !important;
	outline:none;
}
 .searchform>input:hover, .searchform:hover>input{
	background: #44cef6;
	color: #ffffff !important;
}
</style>
