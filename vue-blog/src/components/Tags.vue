<template>
  <div class="tags">
    <div class="borderStyle container">
        <h1 class="title">tags</h1>
        <div class="content">
        <p ><strong>Mayer</strong>目前共有标签：30个</p>
        <div class='tags'>
            <a v-for="item in items" class="item" :key="item.id" :style="item.size" >{{item.name}}</a>
        </div>
        </div>
    </div>
  </div>
</template>

<script>
import {mapState,  mapActions , mapMutations} from 'vuex'
export default {
  name: 'tags',

  data () {
    return {
        items :[{id:1, name:'12306',size:{fontSize:'14px'}},
         {id:2, name:'Apache',size:{fontSize:'14px'}},
         {id:3, name:'MySQL',size:{fontSize:'18px'}},
         {id:4, name:'Linux',size:{fontSize:'14px'}},
         {id:5, name:'PHP',size:{fontSize:'20px'}},
         {id:6, name:'SEO',size:{fontSize:'14px'}}]
    }
  }, computed: {
    ...mapState({
      
    
    })
  },
  methods:{
    ...mapActions([
        'getTags'
    ]),
   
  },
created:function(){

    this.getTags('get_tags');
  
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

 .tags{
	margin: 10px;

}
 .tags>a{
	display: inline-block;
	padding: 10px 20px;
	color: rgba(0, 0, 0, 0.6);
	-moz-transition: all 0.2s ease-in;
	-webkit-transition: all 0.2s ease-in;
	-o-transition: all 0.2s ease-in;
	-ms-transition: all 0.2s ease-in;
	transition: all 0.2s ease-in;
}

 .tags>a:hover {
    color: #fff;
    background: #44cef6;
    border-radius: 5px;
}
</style>
