<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    header {
        background-color: #333;
        color: #fff;
        text-align: center;
        padding: 1rem 0;
    }
    .services-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        padding: 2rem;
    }
    .service-card {
        border: 1px solid #ccc;
        border-radius: 5px;
        margin: 1rem;
        padding: 1rem;
        width: 300px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
    }
    .service-card:hover {
        transform: scale(1.05);
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<header>
    <h1>Our Services</h1>
</header>

<div class="services-container" id="services-container">
    <!-- Dynamic services will be loaded here -->
</div>

<script>
    // Dummy services data
    const servicesData = [
        { title: "User Interface", description: "We see the all detail of user itself." },
        { title: "Transaction", description: "We can transfer money to other User." },
        { title: "Transaction-History", description: "We can see the history of transaction that was transfer by the User." },
        { title: "Mini-Statement", description: "Creating the pdf of transaction by month Report." },
        { title: "Change Password", description: "We can change the password for the login." }
    ];

    // Function to render services
    function renderServices() {
        const container = document.getElementById("services-container");
        let servicesHtml = "";
        servicesData.forEach(service => {
            servicesHtml += `
                <div class="service-card">
                    <h2>${service.title}</h2>
                    <p>${service.description}</p>
                </div>
            `;
        });
        container.innerHTML = servicesHtml;
    }

    // Initial render
    renderServices();
</script>

</asp:Content>

