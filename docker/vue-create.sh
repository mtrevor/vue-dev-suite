#!/bin/bash
yes | vue create --preset default --git false .
cat > /vue/babel.config.js <<EOF
module.exports = function(babel) {
  babel.cache(true);

  return {
    "presets": [["@babel/env", { "modules": false }]],
    "env": {
      "test": {
        "presets": [["@babel/env", { "targets": { "node": "current" } }]]
      }
    }
  };
};
EOF

