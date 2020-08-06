
import Typed from 'typed.js';

const loadDynamicText = () => {
  const spans = document.querySelectorAll('.card-text > span');
  if (spans.length > 0) {
    spans.forEach((span) => {

      new Typed(`#${span.id}`, {
        strings: ["To see the ingredients", "Click on the button below"],
        typeSpeed: 70,
        loop: true
      });
    });
  }
}

export { loadDynamicText };
