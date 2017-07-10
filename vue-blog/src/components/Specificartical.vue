<template>
    <div class="specificartical borderStyle container" >
        <!--<div class="loading" v-if="loading">
            Loading...
         </div>-->
        <h1 class='title'>{{specific.title}} </h1>
        <div class='content'>
             <div><span class='annotation'><i></i>{{specific.date}}</span>/
            <span class='annotation'><i></i>{{specific.browse}}</span>/
            <div>{{specific.content}}</div>
            
            <div class='attention'><i>@</i></div>
            <div class='lable'><i>*</i><a v-for="(tag,index) in specific.tags" :key="index">{{index!=0?',':''}}{{tag}}</a></div>
        </div>
       
    </div>
</template>

<script>
import {mapState,  mapActions , mapMutations} from 'vuex'
export default {
  name: 'specificartical',

  data () {
    return {
         
    }
    
  },
   computed: {
    ...mapState({
        specific:state=>state.ArchiveStore.specific,
      loading:state=>state.ArchiveStore.loading
    })
  },
  methods:{
    ...mapActions([
       'getArticlesSpecific'
    ]), 
    ...mapMutations([
        
    ]),
  
  },
  activated:function(){
  this.loading=true;
    this.getArticlesSpecific(this.$route.params.id);
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

 .annotation{
	margin: 5px;

}
 .attention{
	text-align: center;
	font-size: 18px;
}
 .lable a{
	font-size: 16px;
	color: rgba(0, 0, 0, 0.5);
}
 .lable a:hover{
color: #44cef6;
}

</style>
