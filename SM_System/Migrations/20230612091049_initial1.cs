using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SM_System.Migrations
{
    /// <inheritdoc />
    public partial class initial1 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "DbstudentModules",
                columns: table => new
                {
                    Id = table.Column<int>(type: "INTEGER", nullable: false)
                        .Annotation("Sqlite:Autoincrement", true),
                    StudentId = table.Column<int>(type: "INTEGER", nullable: false),
                    ModuleId = table.Column<int>(type: "INTEGER", nullable: false),
                    Grade = table.Column<string>(type: "TEXT", nullable: false),
                    Credit = table.Column<int>(type: "INTEGER", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DbstudentModules", x => x.Id);
                    table.ForeignKey(
                        name: "FK_DbstudentModules_Dbmodule_ModuleId",
                        column: x => x.ModuleId,
                        principalTable: "Dbmodule",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_DbstudentModules_Dbstudent_StudentId",
                        column: x => x.StudentId,
                        principalTable: "Dbstudent",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_DbstudentModules_ModuleId",
                table: "DbstudentModules",
                column: "ModuleId");

            migrationBuilder.CreateIndex(
                name: "IX_DbstudentModules_StudentId",
                table: "DbstudentModules",
                column: "StudentId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "DbstudentModules");
        }
    }
}
