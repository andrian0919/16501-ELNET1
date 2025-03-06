using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace HomeownersSubdivision.Migrations
{
    /// <inheritdoc />
    public partial class AddBlockAndLotNumberToApplicationUser : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "BlockAndLotNumber",
                table: "AspNetUsers",
                type: "longtext",
                nullable: false)
                .Annotation("MySql:CharSet", "utf8mb4");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "BlockAndLotNumber",
                table: "AspNetUsers");
        }
    }
}
