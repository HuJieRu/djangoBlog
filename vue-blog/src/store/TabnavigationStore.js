import axios from '../assets/js/axios'
export default {
    state: {
        count: {},
    },
    mutations: {

    },
    actions: {
        getCount({ commit, state }, url) { //得到文章、分类、标签的个数
            axios.Get({
                url: url,
                callback: (res) => {
                    state.count = res.data
                        // console.log(data);
                }
            })
        }


    }
}