<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SiGAT.Models.Trote>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Cadastro de Trote</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            data
        </th>
        <th>
            telfoneRequisitante
        </th>
        <th>
            deslocouViatura
        </th>
        <th>
            endereco
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.data) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.telfoneRequisitante) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.deslocouViatura) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.endereco.logradouro) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.idTrote }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.idTrote }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.idTrote }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
