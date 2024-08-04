import axios from 'axios';

axios.defaults.baseURL = "http://localhost:8080/v1";

axios.interceptors.request.use((c) => {
    return c
})

axios.interceptors.response.use((r) => {
    const { data } = r;
    return {
        code: data.code,
        msg: data.msg,
        data: data.data
    };
})

export default axios;