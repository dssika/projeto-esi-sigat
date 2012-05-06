<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SiGAT.Models.Pessoa>>" %>

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
            cnh
        </th>
        <th>
            cpf
        </th>
        <th>
            nome
        </th>
        <th>
            email
        </th>
        <th>
            dataNascimento
        </th>
        <th>
            endereco
        </th>
        <th>
            telefone
        </th>
        <th>
            isPM
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.cnh) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.cpf) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.nome) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.email) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.dataNascimento) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.endereco.logradouro) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.telefone.numero) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.isPM) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.idPessoa }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.idPessoa }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.idPessoa }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
