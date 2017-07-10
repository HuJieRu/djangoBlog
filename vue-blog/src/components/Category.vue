<template>
  <div class="category">
     <div class="borderStyle container">
        <h1 class="title">Category</h1>
        <div class="content">
            <p ><strong>Mayer</strong>目前共有分类：9</p>
            <div class='classify'>
                <a>apache(3)</a>
                <a>linux软件环境(7)</a>
                <a>PHP(3)</a>
                <a>apache(3)</a>
                <a>apache(3)</a>
            </div>
        </div>
    </div>
  </div>
</template>

<script>
import {mapState,  mapActions , mapMutations} from 'vuex'
export default {
  name: 'category',

  data () {
    return {

    }
  }, computed: {
    ...mapState({
     
    
    })
  },
  methods:{
    ...mapActions([
        'getArticleclassify'
    ]),
   
  },
created:function(){
    this.getArticleclassify('get_articleclassify');
  
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
 
.classify>a{
	display: inline-block;
	padding: 10px;
	color: rgba(0, 0, 0, 0.6);
	font-size: 14px;
}
</style>
