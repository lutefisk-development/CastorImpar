<template>
          <div class="modal d-block"  tabindex="-1" role="dialog" >
         <div class="modal-dialog  modal-dialog-centered" role="document">
            <div class="modal-content modal-custom">
               <div class="modal-header">
                  <h3 class="modal-title" id="exampleModalCenterTitle">{{ movie.title }}</h3>
                  <button  type="button" class="close" data-dismiss="modal" aria-label="Close" @click="$emit('close')">
                     <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body outer col-sm-12 ">
                  <div class="modal-body inner">
                     <h6>Actors</h6>
                     <p>{{ movie.actor }}</p>
                     <h6>Directer</h6>
                     <p>{{movie.director}}</p>
                  </div>
                  <div class="modal-footer">
                      <p v-html="movie.description"></p>
                  </div>
                  <p>{{movie.genre}}</p>
               </div>
            </div>
         </div>
      </div>
</template>

<style>

</style>


<script>


	export default{
		name: "KarusellModal",
      props: ['movie']
     
      
      
   };
   

</script>