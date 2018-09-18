<%@page import="java.lang.String"%>
<%@page import="java.util.List"%>
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Plain Page</h3>
            </div>

            <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>
        
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Cardapio <small>Opções</small></h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Configuração 1</a>
                                    </li>
                                    <li><a href="#">Configuração 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <br>
                        <table>
                            <tr>
                                <td>Sabor</td>
                                <td>Preço</td>
                                <td>Tempo de Preparo</td>
                            <tr/>
                            <% List<String> CardapioBean = (List) request.getAttribute("CardapioBean");
                                if(CardapioBean!=null){
                                for(String type: CardapioBean){
                                out.println("<br/>" + type.getBytes());
                                    }
                                }
                            %>
                            <c:forEach var="type" items="${CardapioBean}">
                            <tr> 

                                <td>  <c:out value="${CardapioBean.Sabor}" /></td>
                                <td> <c:out value="${CardapioBean.Preco}" /></td>
                                <td> <c:out value="${CardapioBean.TempoPreparo}" /></td>
                            </tr> 
                            </c:forEach>
                        </table>
                    </div>
                </div>

            </div>
        </div>


    </div>
</div>
<!-- /page content -->