import axios from '../assets/js/axios'

export default {
    state: {


    },
    mutations: {

    },
    actions: {
        getArticleclassify({ commit, state }, url) { //得到文章分类
            axios.Get({
                url: url,
                callback: (data) => {
                    // console.log(data);
                }
            })
        },


    }
}