<template>
  <div class="flex-container film-box">
    <iframe
      type="text/html"
      width="400"
      height="385"
      src="https://www.youtube.com/embed/sGbxmsDFVnE"
      frameborder="0"
      allowfullscreen
    ></iframe>

    <p>{{text}}</p>
    <div class="button-group">
      <button>Order now</button>
         <button data-toggle="modal" data-target="#ModalCenter">Read more</button> <!--ta upp modal!!! -->
    </div>
    
    <!-- Här börjar modal -->
    <div class="modal fade" id="ModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
         <div class="modal-content inner-modal">
            <div class="modal-header">
               <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
                  ...
            </div>
            <div class="modal-footer"></div>
         </div>
      </div>
   </div>
  </div>
</template>

<style>
*{
    box-sizing: border-box;
}

.flex-container {
    display: flex;
    flex-direction: column;
    
} 



.film-box {
    
    padding: 5px;
    border: 20px solid transparent;
    border-image: url(../images/film-solid.svg) 90 stretch;
    text-align: center;
    word-wrap: normal;
    width: 450px;
    height: 450px;
        
  
}


.button-group {
    margin: auto;
    justify-content: space-evenly;
    display: flex;
    width: 200px;
    height: 50px;
  

}

.button-group button {
    font-family: 'Roboto', sans-serif;
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 2.5px;
    font-weight: 500;
    color: white;
    background-color: black;
    border: none;
    
    border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
    box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
    transition: all 0.6s ease 0s;
    cursor: pointer;
    outline: none;
    margin-right: 20px;
    margin-top: 0;
    padding: 5px;
}

.button-group button:hover {
  background-color: #2EE59D;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
  
}
</style>

<script>
export default {
    name: 'FilmInfo',
    data() {
        return {
            text: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Provident, beatae? Ut consectetur eligendi, porro consequatur quaerat dolore optio, accusantium cupiditate, velit aperiam laboriosam deserunt praesentium accusamus alias veritatis qui error."
        }
    }
}
</script>