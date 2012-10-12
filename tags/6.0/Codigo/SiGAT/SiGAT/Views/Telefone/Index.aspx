<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SiGAT.Models.Telefone>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            Pessoa
        </th>
        <th>
            DDD
        </th>
        <th>
            Numero
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.pessoa.nome) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ddd) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.numero) %>
        </td>
        <td>
            <%: Html.ActionLink("Editar", "Edit", new { id=item.idTelefone }) %> |
            <%: Html.ActionLink("Detalhes", "Details", new { id=item.idTelefone }) %> |
            <%: Html.ActionLink("Excluir", "Delete", new { id=item.idTelefone }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
