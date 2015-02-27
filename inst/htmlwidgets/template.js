HTMLWidgets.widget({

  name: 'template',

  type: 'output',

  initialize: function(el, width, height) {
     var agentdiv = document.createElement('div');
     agentdiv.id = "template";
     $(el).append(agentdiv);

    return {
      // TODO: add instance fields as required
    }

  },

  renderValue: function(el, x, instance) {

   result=x.model();

  },

  resize: function(el, width, height, instance) {

  }

});
