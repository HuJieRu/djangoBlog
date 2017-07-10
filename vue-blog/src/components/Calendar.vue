<template>
  <div class="calendar">
    <div class='calendar'>
        <table  >
            <caption>2017年二月</caption>
            <thead>
                <tr>
                    <th >日</th>
                    <th >一</th>
                    <th >二</th>
                    <th >三</th>
                    <th >四</th>
                    <th >五</th>
                    <th >六</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td >&nbsp;</td><td >&nbsp;</td><td >&nbsp;</td><td>1</td><td>2</td><td>3</td><td>4</td>
                </tr>
                <tr>
                    <td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td><a >10</a></td><td><a >11</a></td>
                </tr>
                <tr>
                    <td>12</td><td>13</td><td>14</td><td>15</td><td>16</td><td>17</td><td>18</td>
                </tr>
                <tr>
                    <td>19</td><td>20</td><td>21</td><td>22</td><td>23</td><td>24</td><td>25</td>
                </tr>
                <tr>
                    <td>26</td><td >27</td><td>28</td>
                    <td >&nbsp;</td><td >&nbsp;</td><td >&nbsp;</td><td >&nbsp;</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colSpan="3" id="prev"><a >« 1月</a></td>
                    <td >&nbsp;</td>
                    <td colSpan="3" id="next" >&nbsp;</td>
                </tr>
            </tfoot>
        </table>    
    </div> 
  </div>
</template>

<script>

export default {
  name: 'calendar',

  data () {
    return {

    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .calendar{
	border-radius: 10px;
	background-color: #fff;
	box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.02), 0 4px 10px rgba(0, 0, 0, 0.06);
	text-align: center;
}

 .calendar tbody td, .calendar thead th{
	font-size: 16px;
	border-bottom: 1px solid #eee;
	border-right: 1px solid #eee;
	padding: 10px;
	color: rgba(0, 0, 0, 0.5);
	position: relative;
	text-align: center;
}
 .calendar caption{
	padding: 10px 0;
	border-bottom: 1px solid #eee;
}
 .calendar  a{
	display: flex;
    position: absolute;
    width: 100%;
    height: 100%;
    left: 0;
    top: 0;
    align-items: center;
    justify-content: center;
}
 .calendar  a:hover{
	background-color: #44cef6;
	color: #fff;
}
 .calendar tfoot td{
	position: relative;
	padding: 10px 0;
    border-right: 1px solid #eee;
}
 .calendar tfoot td a:hover{
	background-color: #44cef6;
	color: #fff;
	border-radius: 0 0  0 10px;
}
</style>
