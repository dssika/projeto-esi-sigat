<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SiGAT.Models.Trote>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Trote</h2>

<p>
    <%: Html.ActionLink("Cadastrar novo trote", "Create") %>
</p>
<table>
    <tr>
        <th>
            Data
        </th>
        <th>
            Telefone do Requisitante
        </th>
        <th>
            Deslocou Viatura?
        </th>
        <th>
            Endereço
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
            <%: Html.Label(item.deslocouViatura.ToString()) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.endereco.logradouro) %>
        </td>
        <td>
            <%: Html.ActionLink("Editar", "Edit", new { id=item.idTrote }) %> |
            <%: Html.ActionLink("Detalhes", "Details", new { id=item.idTrote }) %> |
            <%: Html.ActionLink("Excluir", "Delete", new { id=item.idTrote }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
