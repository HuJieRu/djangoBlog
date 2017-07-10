import Vue from 'vue'
import Router from 'vue-router'
import Archive from '../components/Archive.vue'
import Tags from '../components/Tags.vue'
import Category from '../components/Category.vue'
import Specificartical from '../components/Specificartical.vue'
import Postlist from '../components/Postlist.vue'
Vue.use(Router)

export default new Router({
    routes: [{
        path: '/',
        name: 'Archive',
        component: Archive
    }, {
        path: '/tags',
        name: 'tags',
        component: Tags
    }, {
        path: '/category',
        name: 'category',
        component: Category
    }, {
        path: '/specificartical/:id',
        name: 'specificartical',
        component: Specificartical
    }, {
        path: '/postlist',
        name: 'postlist',
        component: Postlist
    }]
})