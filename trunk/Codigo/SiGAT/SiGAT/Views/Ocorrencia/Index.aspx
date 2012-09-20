<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SiGAT.Models.ocorrencia>>" %>

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
            data
        </th>
        <th>
            gravidade
        </th>
        <th>
            possuiVitimas
        </th>
        <th>
            endereco
        </th>
        <th>
            condicaotempo
        </th>
        <th>
            condicaovia
        </th>
        <th>
            sinalizacaovia
        </th>
        <th>
            tipoocorrencia
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.data) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.gravidade) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.possuiVitimas) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.endereco.logradouro) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.condicaotempo.descricao) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.condicaovia.descricao) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.sinalizacaovia.descricao) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.tipoocorrencia.descricao) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.idOcorrencia }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.idOcorrencia }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.idOcorrencia }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
