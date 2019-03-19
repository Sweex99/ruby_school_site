import Vue from 'vue/dist/vue.esm'

Vue.component('my-modal', {
    template: '<div class="modal-open "> <div class="modal-dialog" role="document"> <div class="modal-content"> <div class="modal-header"> <h5 class="modal-title">Авторизуватися</h5> <button type="button" class="close material-icons" data-dismiss="modal" aria-label="Close" @click="$emit(\'close\')" ><a class="material-icons" style="color: black">cancel</a></button></div> <div class="modal-body"> <p><slot /></p> </div> </div> </div> </div>'
})

document.addEventListener('DOMContentLoaded', () => {
    new Vue({
        el: '#root',
        data: {
            showLoginModal: false
        },
    });
});