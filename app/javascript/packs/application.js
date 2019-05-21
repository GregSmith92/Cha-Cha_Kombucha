import "bootstrap";
import { sliderMaker } from '../components/rating';
document.querySelectorAll('.slider-select').forEach(slider => {
  sliderMaker(slider.id)
})
