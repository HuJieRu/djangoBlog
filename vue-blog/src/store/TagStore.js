import axios from '../assets/js/axios'
export default {
    state: {
        tags: []
    },
    mutations: {
        tagsAddSize(state) { //给标签添加size
            let size = ['14px', '16px', '20px'];
            let sizeIndex = 0;
            state.tags.forEach((tag, index) => {
                if (index % 3 == 2) {
                    sizeIndex = 2;
                } else if (index % 3 == 1) {
                    sizeIndex = 1;
                }
                tag['size'] = { fontSize: size[sizeIndex] }
            });
            // console.log(state.tags);
        }
    },
    actions: {
        getTags({ commit, state }, url) { //得到标签
            axios.Get({
                url: url,
                callback: (res) => {
                    // console.log(data);
                    state.tags = res.data.tags;
                    commit('tagsAddSize');
                }
            })
        }


    }
}