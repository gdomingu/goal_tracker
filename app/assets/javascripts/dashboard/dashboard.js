document.addEventListener("DOMContentLoaded", function(event) {
  var containers = document.getElementsByClassName('progress-container')
  for (var i = 0; i < containers.length; i++) {
    initProgressBar(containers[i]);
  }

  function initProgressBar(container) {
    var progressValue = container.getAttribute("data-progress-value");
    var bar = new ProgressBar.SemiCircle(container, {
      strokeWidth: 6,
      color: '#FFEA82',
      trailColor: '#eee',
      trailWidth: 4,
      easing: 'easeInOut',
      duration: 1400,
      svgStyle: null,
      text: {
        value: '',
        alignToBottom: false
      },
      from: {color: '#FFEA82'},
      to: {color: '#ED6A5A'},
      // Set default step function for all animate calls
      step: (state, bar) => {
        bar.path.setAttribute('stroke', state.color);
        var value = Math.round(bar.value() * 100);
        if (value === 0) {
          bar.setText('');
        } else {
          bar.setText(value);
        }

        bar.text.style.color = state.color;
      }
    });
    bar.text.style.fontFamily = '"Raleway", Helvetica, sans-serif';
    bar.text.style.fontSize = '2rem';

    bar.animate(progressValue);  // Number from 0.0 to 1.0
  }
});

