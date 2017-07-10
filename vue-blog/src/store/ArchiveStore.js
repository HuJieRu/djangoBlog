import axios from '../assets/js/axios'

export default {
    state: {
        allCount: 0, //文章总数
        list: [], //文章列表
        specific: {
            browse: 0,
            content: '',
            title: '',
            date: '',
            tags: []
        }, //文章详情
        loading: false,
    },
    mutations: {
        toggleListItem(state, item) {
            item.checked = !item.checked;

        }

    },
    actions: {
        getArticles({ commit, state }) { //得到文章
            axios.Get({
                url: 'get_articles',
                callback: (res) => {
                    // console.log(res);
                    state.allCount = res.data['allCount'];
                    res.data['list'].forEach((element) => {
                        element['checked'] = false;
                        element['children'] = [];
                    });
                    state.list = res.data['list']

                    // console.log(state.list);

                }
            })
        },
        toggleListItem({ commit, state }, item) { //得到指定年月的文章
            if (item.children.length == 0) {
                axios.Get({
                    url: 'get_articles_for_date',
                    params: {
                        year: item.year,
                        month: item.month
                    },
                    callback: (res) => {
                        item.children = res.data.list;
                        // console.log(res);
                        commit('toggleListItem', item);
                    }
                })
            } else {
                commit('toggleListItem', item);
            }

        },
        getArticlesSpecific({ commit, state }, id) { //得到指定文章详情

            axios.Get({
                url: 'get_article_specific',
                params: {
                    id: id
                },
                callback: (res) => {
                    // console.log(res);
                    let data = res.data
                    state.specific = {
                        browse: data['browse'],
                        content: data['content'],
                        title: data['title'],
                        date: data['date'],
                        tags: data['tags']
                    }
                    state.loading = false;
                    //   specific
                }
            })

        },

    }
}