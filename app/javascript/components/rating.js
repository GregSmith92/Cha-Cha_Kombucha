
const sliderMaker = (el) => {

  const slider = new Vue ({
    el: `#${el}`,
    data(){
      return {
        val: 70
      }
    },
    mounted(){
      this.val = Math.floor(Math.random() * 101)
    },
    computed: {
      getPlacement: function(){
        return `${(-0.009 * ((this.val * -1) + 104))}em`;
      },
      greaterThanFifty: function(){
        return this.val > 50 ? `var(--roundness)` : `0`;
      },
      getHappinessColor: function(){
        return `rgba(255, ${106 + (103 / 100 * this.val)}, ${(Math.floor(this.val * -1 / 7.692)) + 13}`;
      },
      getHappiness: function(){
        let mood;
        if(this.val == 0){
          mood = "🤬"
        } else if(this.val < 10){
          mood = "😡"
        } else if(this.val < 20){
          mood = "😠"
        } else if(this.val < 30){
          mood = "😦"
        } else if(this.val < 40){
          mood = "☹️"
        } else if(this.val < 50){
          mood = "🙁"
        } else if(this.val < 60){
          mood = "😐"
        } else if(this.val < 70){
          mood = "🙂"
        } else if(this.val < 80){
          mood = "😊"
        } else if(this.val < 90){
          mood = "😄"
        } else if(this.val < 100){
          mood = "😃"
        } else if(this.val == 100){
          mood = "😍"
        }
        document.getElementById(`${el}-form`).innerHTML = this.val
        return mood;
      }
    }
  });
}
 export { sliderMaker }



