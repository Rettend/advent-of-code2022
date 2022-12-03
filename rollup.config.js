import commonjs from 'rollup-plugin-commonjs';
import coffeescript from 'rollup-plugin-coffee-script';
import coffee from 'rollup-plugin-coffee-script';
import nodeResolve from 'rollup-plugin-node-resolve';

export default {
  input: 'main.coffee',
  plugins: [
    coffeescript(),
    coffee(),
    nodeResolve({ extensions: ['.js', '.coffee'] }),
    commonjs({
      extensions: ['.js', '.coffee']
    })
  ]
}