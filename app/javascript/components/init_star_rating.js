import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  const rating = document.getElementById('review_rating')

  if (rating) {
    $('#review_rating').barrating({
    theme: 'css-stars'
  });
  }
};

export { initStarRating }
