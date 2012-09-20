<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SiGAT.Models.Endereco>>" %>

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
            logradouro
        </th>
        <th>
            bairro
        </th>
        <th>
            cep
        </th>
        <th>
            cidade
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.logradouro) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.bairro) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.cep) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.cidade.nome) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.idEndereco }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.idEndereco }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.idEndereco }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
