<template>
  <div class="archive">
    <div class="borderStyle container">
        <h1 class="title">archive</h1>
        <div class="content">
        <p ><strong>Mayer</strong>目前共有文章：{{allCount}}篇</p>
        <div class='archive'>
            <ul>
                <li v-for="(item,index) in list" :key="index">
                    <div @click="toggleListItem(item)"  class='change'><span  >+</span>{{item.year}}年{{item.month}}月(共{{item.count}}篇文章)</div>
                    
                    <ul class='children' v-show="item.checked">
                        <li v-for="child in item.children" :key='child.id'>
                            {{child.day}}日：<router-link :to="{ name: 'specificartical', params: { id: child.id }}">{{child.title}}</router-link>
                        </li>
                      
                    </ul>
                </li>
                <!--<li v-for="(item,index) in te" :key="index">
                    <div @click="test(index)" class='change'><span  >+</span>{{item.y}}年二月(共2篇文章)</div>
                    <ul class='children' v-bind:class="{'test':item.checked}">
                        <li>
                            11日：<router-link :to="path">memcached指令汇总 && stats/stats slabs指令详解</router-link>
                        </li>
                        <li>
                            11日：<router-link :to="path">memcached指令汇总 && stats/stats slabs指令详解</router-link>
                        </li>
                    </ul>
                </li>-->
            </ul>
        </div>
        </div>
    </div>
  </div>
</template>

<script>
import {mapState,  mapActions , mapMutations} from 'vuex'
export default {
  name: 'archive',

  data () {
    return {
      
        // te:[{y:1}]
    }
  },
   computed: {
    ...mapState({
     
     allCount:state=>state.ArchiveStore.allCount,
     list:state=>state.ArchiveStore.list,
    })
  },
  methods:{
    ...mapActions([
        'getArticles',
        'toggleListItem'
    ]), 
    ...mapMutations([
        
    ]),
    // test(index){
    //     console.log(this.te)
    //     let temp=this.te;
    //     console.log(temp[0])
    //     if (typeof temp[0].checked == 'undifined') {
    //             this.$set(temp[0], 'checked', false);
    //         } else {
    //            temp[0].checked = !temp[0].checked
    //         }
    //         this.te[0]=Object.assign({}, this.te[0], temp[0]);
    //         console.log(this.te);
    // }
  
  },
created:function(){

    this.getArticles();

  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
 .test{
     display: none;
 }
 .archive {
margin: 10px;
}
 .archive a:hover {
    color: #059;
    text-decoration: underline;
}
 .archive .children{
    margin: 5px 25px;
    -moz-transition: all 0.2s ease-in;
	-webkit-transition: all 0.2s ease-in;
	-o-transition: all 0.2s ease-in;
	-ms-transition: all 0.2s ease-in;
	transition: all 0.4s ease-in;
}
 .archive .change{
    cursor: pointer;
}
 .archive .change span{
    margin-right: 5px;
}
</style>
