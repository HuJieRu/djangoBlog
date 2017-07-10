<template>
  <div id="app">
   <div class="commwidth main">
        <div class="left ">
            <app-tabnavigation > </app-tabnavigation >
            <div class="explain1">
                <p >Version: s1.2_Statistics.</p>
                <p >©2017 Mayer.All rights reserved.</p>
            </div>
        </div>
        <div class="center ">
              <transition name="fade" mode="out-in">
                <keep-alive>
                  <router-view class="fadeView"></router-view>
              </keep-alive>
              </transition>
        </div>
        <div class="right">
            <app-rightbox > </app-rightbox >
            
        </div>
        <div class="explain2">
                <p >Version: s1.2_Statistics.</p>
                <p >©2017 Mayer.All rights reserved.</p>
          </div>
    </div>
  </div>
</template>

<script>
import Tabnavigation from './components/Tabnavigation.vue'
import Rightbox from './components/Rightbox.vue'
export default {
  name: 'app',
   components: {
    'app-tabnavigation':Tabnavigation,
    'app-rightbox':Rightbox,
  }
}
</script>

<style>
html,
body,
textarea,ul,p,h1,h2,h3,h4,td,th {
    padding: 0;
    margin: 0;
}

body {
    font: 14px/1.3 'Arial', 'Microsoft YaHei';
    background: #F5F5F5;
    color: #444444;
    font-size: 14px;
}

textarea {
    resize: none;
}

a {
    color: #368da7;
    text-decoration: none;
}
img{
	max-width: 100%;
	height: auto;
	box-sizing: border-box;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
.commwidth{
	max-width: 1120px;
}
.main{
	padding: 80px 0 30px;
	margin-left: auto;
    margin-right: auto;
    display: flex;
}
.left{
	height: 451px;
	margin: 0px;
	width: 187px;
}
.explain1,.explain2{
	text-align: center;
}
.explain2{
	display: none;
}
.center{
	margin-bottom: 20px;
	margin-left: 20px;
	width: 70%;
}
.right{
	margin-bottom: 20px;
	margin-left: 20px;
	min-height: 100px;
	width: 30%;
}
.title{
	padding: 15px 30px;
	border-bottom: 1px solid #EEEEEE;
	box-shadow: 0 2px 5px -1px rgba(0, 0, 0, 0.05);
	background-image: linear-gradient(rgba(200, 200, 200, 0), rgba(200, 200, 200, 0.12));
	color: rgba(0, 0, 0, 0.4);
	font-size: 16px;
	line-height: 25px;
}
.container{
	min-height: 100px;
	background: #ffffff;
}

.content{
	margin: 20px 30px;
}

.borderStyle{
	border-radius: 10px;
	background-color: #fff;
	box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.02), 0 4px 10px rgba(0, 0, 0, 0.06);
}

/*媒体查询*/
@media screen and (max-width: 736px) {
    .left ,.center,.right { width:100%; margin: 0 }
    .main {flex-direction: column;padding: 10px;}
    .explain1{
    	display: none;
    }
    .explain2{
    	display: block;
    }
    table{width: 100%;}
}
</style>
