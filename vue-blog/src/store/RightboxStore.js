import axios from '../assets/js/axios'
export default {
    state: {


    },
    mutations: {

    },
    actions: {
        getRightboxContent({ commit, state }, url) {
            axios.Get({
                url: url,
                callback: (data) => {
                    // console.log(data);
                }
            })
        }

    }
}