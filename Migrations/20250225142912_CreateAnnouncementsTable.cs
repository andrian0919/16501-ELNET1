using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace HomeownersSubdivision.Migrations
{
    /// <inheritdoc />
    public partial class CreateAnnouncementsTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Announcement_AspNetUsers_ApplicationUserId",
                table: "Announcement");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Announcement",
                table: "Announcement");

            migrationBuilder.DropIndex(
                name: "IX_Announcement_ApplicationUserId",
                table: "Announcement");

            migrationBuilder.DropColumn(
                name: "ApplicationUserId",
                table: "Announcement");

            migrationBuilder.RenameTable(
                name: "Announcement",
                newName: "Announcements");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Announcements",
                table: "Announcements",
                column: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_Announcements",
                table: "Announcements");

            migrationBuilder.RenameTable(
                name: "Announcements",
                newName: "Announcement");

            migrationBuilder.AddColumn<string>(
                name: "ApplicationUserId",
                table: "Announcement",
                type: "varchar(255)",
                nullable: true)
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Announcement",
                table: "Announcement",
                column: "Id");

            migrationBuilder.CreateIndex(
                name: "IX_Announcement_ApplicationUserId",
                table: "Announcement",
                column: "ApplicationUserId");

            migrationBuilder.AddForeignKey(
                name: "FK_Announcement_AspNetUsers_ApplicationUserId",
                table: "Announcement",
                column: "ApplicationUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");
        }
    }
}
