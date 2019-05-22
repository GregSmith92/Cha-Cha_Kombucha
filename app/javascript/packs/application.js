import "bootstrap";
import { sliderMaker } from '../packs/components/rating';
document.querySelectorAll('.slider-select').forEach(slider => {
  sliderMaker(slider.id)
})

