<%@ Page Title="Veículos" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SiGAT.Models.Veiculo>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Veículos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Veículos</h2>

<p>
    <%: Html.ActionLink("Cadastrar", "Create") %>
</p>
<table>
    <tr>
        <th>
            Renavan</th>
        <th>
            Placa
        </th>
        <th>
            Marca
        </th>
        <th>
            Modelo
        </th>
        <th>
            Ano
        </th>
        <th>
            Tipo
        </th>
        <th>
            Proprietário
        </th>
        <th>Opções</th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.renavan) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.placa) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.marca) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.modelo) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.anoFabricacao) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.tipo) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.pessoa.nome) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.idVeiculo }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.idVeiculo }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.idVeiculo }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
