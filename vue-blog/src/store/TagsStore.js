import axios from '../assets/js/axios'
export default {
    state: {


    },
    mutations: {

    },
    actions: {
        getTags({ commit, state }, url) { //得到标签

            axios.Get({
                url: url,
                callback: (data) => {
                    // console.log(data);
                }
            })
        }


    }
}