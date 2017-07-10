import Vue from 'vue'
import Vuex from 'vuex'
import TabnavigationStore from './TabnavigationStore'
import ArchiveStore from './ArchiveStore'
import RightboxStore from './RightboxStore'
import CategoryStore from './CategoryStore'
import TagStore from './TagStore'
Vue.use(Vuex)

export default new Vuex.Store({
    state: {
        // path: 'http://localhost:8000/', //服务器地址
        // url: '' //请求地址
    },
    mutations: {
        // setUrl(state, url) { //设置请求地址

        //     state.url = state.path + url;
        // }
    },
    actions: {

    },

    modules: {
        TabnavigationStore,
        ArchiveStore,
        RightboxStore,
        CategoryStore,
        TagStore
    }
})