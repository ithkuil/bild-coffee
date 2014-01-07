childproc = require 'child_process'

exports.process = (node, tree, cb) ->
  e, out, err = childproc.exec! "coffee -o #{node.out} -c #{node.files}"
  console.log out
  console.log err
  cb e, out+'\n'+err
