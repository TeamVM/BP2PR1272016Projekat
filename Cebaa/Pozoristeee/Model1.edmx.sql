
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/29/2021 20:48:22
-- Generated from EDMX file: D:\BP@\nnov\novv\Baze2Projekat-main\Cebaa\Pozoristeee\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Pozoriste5];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PozoristeSala]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Salas] DROP CONSTRAINT [FK_PozoristeSala];
GO
IF OBJECT_ID(N'[dbo].[FK_GlumacPredstava_Glumac]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GlumacPredstava] DROP CONSTRAINT [FK_GlumacPredstava_Glumac];
GO
IF OBJECT_ID(N'[dbo].[FK_GlumacPredstava_Predstava]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GlumacPredstava] DROP CONSTRAINT [FK_GlumacPredstava_Predstava];
GO
IF OBJECT_ID(N'[dbo].[FK_NajavaPredstava]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Najavas] DROP CONSTRAINT [FK_NajavaPredstava];
GO
IF OBJECT_ID(N'[dbo].[FK_SalaProjekcija]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projekcijas] DROP CONSTRAINT [FK_SalaProjekcija];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjekcijaKarta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kartas] DROP CONSTRAINT [FK_ProjekcijaKarta];
GO
IF OBJECT_ID(N'[dbo].[FK_SalaSediste]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sedistes] DROP CONSTRAINT [FK_SalaSediste];
GO
IF OBJECT_ID(N'[dbo].[FK_SedisteKarta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kartas] DROP CONSTRAINT [FK_SedisteKarta];
GO
IF OBJECT_ID(N'[dbo].[FK_PozoristeKorisnik]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pozoristes] DROP CONSTRAINT [FK_PozoristeKorisnik];
GO
IF OBJECT_ID(N'[dbo].[FK_PozoristeRepertoar]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Repertoars] DROP CONSTRAINT [FK_PozoristeRepertoar];
GO
IF OBJECT_ID(N'[dbo].[FK_NajavaProjekcija]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projekcijas] DROP CONSTRAINT [FK_NajavaProjekcija];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Pozoristes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pozoristes];
GO
IF OBJECT_ID(N'[dbo].[Repertoars]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Repertoars];
GO
IF OBJECT_ID(N'[dbo].[Predstavas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Predstavas];
GO
IF OBJECT_ID(N'[dbo].[Projekcijas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Projekcijas];
GO
IF OBJECT_ID(N'[dbo].[Salas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Salas];
GO
IF OBJECT_ID(N'[dbo].[Sedistes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sedistes];
GO
IF OBJECT_ID(N'[dbo].[Korisniks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Korisniks];
GO
IF OBJECT_ID(N'[dbo].[Najavas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Najavas];
GO
IF OBJECT_ID(N'[dbo].[Kartas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kartas];
GO
IF OBJECT_ID(N'[dbo].[Glumacs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Glumacs];
GO
IF OBJECT_ID(N'[dbo].[GlumacPredstava]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GlumacPredstava];
GO






-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Pozoristes'
CREATE TABLE [dbo].[Pozoristes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Naziv] nvarchar(max)  NOT NULL,
    [Ulica] nvarchar(max)  NOT NULL,
    [Grad] nvarchar(max)  NOT NULL,
    [Korisnik_Id] int  NOT NULL
);
GO

-- Creating table 'Repertoars'
CREATE TABLE [dbo].[Repertoars] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Naziv] nvarchar(max)  NOT NULL,
    [Pozoriste_Id] int  NOT NULL
);
GO

-- Creating table 'Predstavas'
CREATE TABLE [dbo].[Predstavas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Naziv] nvarchar(max)  NOT NULL,
    [Trajanje] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Projekcijas'
CREATE TABLE [dbo].[Projekcijas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PredstavaId] int  NOT NULL,
    [SalaId] int  NOT NULL,
    [PocetakPredstave] nvarchar(max)  NOT NULL,
    [KrajPredstave] nvarchar(max)  NOT NULL,
    [NajavaId] int  NOT NULL
);
GO

-- Creating table 'Salas'
CREATE TABLE [dbo].[Salas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PozoristeId] int  NOT NULL,
    [Kapacitet] nvarchar(max)  NOT NULL,
    [Naziv] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Sedistes'
CREATE TABLE [dbo].[Sedistes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SalaId] int  NOT NULL,
    [Red] nvarchar(max)  NOT NULL,
    [Kolona] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Korisniks'
CREATE TABLE [dbo].[Korisniks] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Sifra] nvarchar(max)  NOT NULL,
    [Rola] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Najavas'
CREATE TABLE [dbo].[Najavas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RepertoarId] int  NOT NULL,
    [Predstava_Id] int  NOT NULL
);
GO

-- Creating table 'Kartas'
CREATE TABLE [dbo].[Kartas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SedisteId] int  NOT NULL,
    [KorisnikId] int  NULL,
    [ProjekcijaId] int  NOT NULL
);
GO

-- Creating table 'Glumacs'
CREATE TABLE [dbo].[Glumacs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Ime] nvarchar(max)  NOT NULL,
    [Prezime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'GlumacPredstava'
CREATE TABLE [dbo].[GlumacPredstava] (
    [Glumacs_Id] int  NOT NULL,
    [Predstavas_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Pozoristes'
ALTER TABLE [dbo].[Pozoristes]
ADD CONSTRAINT [PK_Pozoristes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Repertoars'
ALTER TABLE [dbo].[Repertoars]
ADD CONSTRAINT [PK_Repertoars]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Predstavas'
ALTER TABLE [dbo].[Predstavas]
ADD CONSTRAINT [PK_Predstavas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Projekcijas'
ALTER TABLE [dbo].[Projekcijas]
ADD CONSTRAINT [PK_Projekcijas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Salas'
ALTER TABLE [dbo].[Salas]
ADD CONSTRAINT [PK_Salas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sedistes'
ALTER TABLE [dbo].[Sedistes]
ADD CONSTRAINT [PK_Sedistes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Korisniks'
ALTER TABLE [dbo].[Korisniks]
ADD CONSTRAINT [PK_Korisniks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Najavas'
ALTER TABLE [dbo].[Najavas]
ADD CONSTRAINT [PK_Najavas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Kartas'
ALTER TABLE [dbo].[Kartas]
ADD CONSTRAINT [PK_Kartas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Glumacs'
ALTER TABLE [dbo].[Glumacs]
ADD CONSTRAINT [PK_Glumacs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Glumacs_Id], [Predstavas_Id] in table 'GlumacPredstava'
ALTER TABLE [dbo].[GlumacPredstava]
ADD CONSTRAINT [PK_GlumacPredstava]
    PRIMARY KEY CLUSTERED ([Glumacs_Id], [Predstavas_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [PozoristeId] in table 'Salas'
ALTER TABLE [dbo].[Salas]
ADD CONSTRAINT [FK_PozoristeSala]
    FOREIGN KEY ([PozoristeId])
    REFERENCES [dbo].[Pozoristes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PozoristeSala'
CREATE INDEX [IX_FK_PozoristeSala]
ON [dbo].[Salas]
    ([PozoristeId]);
GO

-- Creating foreign key on [Glumacs_Id] in table 'GlumacPredstava'
ALTER TABLE [dbo].[GlumacPredstava]
ADD CONSTRAINT [FK_GlumacPredstava_Glumac]
    FOREIGN KEY ([Glumacs_Id])
    REFERENCES [dbo].[Glumacs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Predstavas_Id] in table 'GlumacPredstava'
ALTER TABLE [dbo].[GlumacPredstava]
ADD CONSTRAINT [FK_GlumacPredstava_Predstava]
    FOREIGN KEY ([Predstavas_Id])
    REFERENCES [dbo].[Predstavas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GlumacPredstava_Predstava'
CREATE INDEX [IX_FK_GlumacPredstava_Predstava]
ON [dbo].[GlumacPredstava]
    ([Predstavas_Id]);
GO

-- Creating foreign key on [Predstava_Id] in table 'Najavas'
ALTER TABLE [dbo].[Najavas]
ADD CONSTRAINT [FK_NajavaPredstava]
    FOREIGN KEY ([Predstava_Id])
    REFERENCES [dbo].[Predstavas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NajavaPredstava'
CREATE INDEX [IX_FK_NajavaPredstava]
ON [dbo].[Najavas]
    ([Predstava_Id]);
GO

-- Creating foreign key on [SalaId] in table 'Projekcijas'
ALTER TABLE [dbo].[Projekcijas]
ADD CONSTRAINT [FK_SalaProjekcija]
    FOREIGN KEY ([SalaId])
    REFERENCES [dbo].[Salas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SalaProjekcija'
CREATE INDEX [IX_FK_SalaProjekcija]
ON [dbo].[Projekcijas]
    ([SalaId]);
GO

-- Creating foreign key on [ProjekcijaId] in table 'Kartas'
ALTER TABLE [dbo].[Kartas]
ADD CONSTRAINT [FK_ProjekcijaKarta]
    FOREIGN KEY ([ProjekcijaId])
    REFERENCES [dbo].[Projekcijas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjekcijaKarta'
CREATE INDEX [IX_FK_ProjekcijaKarta]
ON [dbo].[Kartas]
    ([ProjekcijaId]);
GO

-- Creating foreign key on [SalaId] in table 'Sedistes'
ALTER TABLE [dbo].[Sedistes]
ADD CONSTRAINT [FK_SalaSediste]
    FOREIGN KEY ([SalaId])
    REFERENCES [dbo].[Salas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SalaSediste'
CREATE INDEX [IX_FK_SalaSediste]
ON [dbo].[Sedistes]
    ([SalaId]);
GO

-- Creating foreign key on [SedisteId] in table 'Kartas'
ALTER TABLE [dbo].[Kartas]
ADD CONSTRAINT [FK_SedisteKarta]
    FOREIGN KEY ([SedisteId])
    REFERENCES [dbo].[Sedistes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SedisteKarta'
CREATE INDEX [IX_FK_SedisteKarta]
ON [dbo].[Kartas]
    ([SedisteId]);
GO

-- Creating foreign key on [Korisnik_Id] in table 'Pozoristes'
ALTER TABLE [dbo].[Pozoristes]
ADD CONSTRAINT [FK_PozoristeKorisnik]
    FOREIGN KEY ([Korisnik_Id])
    REFERENCES [dbo].[Korisniks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PozoristeKorisnik'
CREATE INDEX [IX_FK_PozoristeKorisnik]
ON [dbo].[Pozoristes]
    ([Korisnik_Id]);
GO

-- Creating foreign key on [Pozoriste_Id] in table 'Repertoars'
ALTER TABLE [dbo].[Repertoars]
ADD CONSTRAINT [FK_PozoristeRepertoar]
    FOREIGN KEY ([Pozoriste_Id])
    REFERENCES [dbo].[Pozoristes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PozoristeRepertoar'
CREATE INDEX [IX_FK_PozoristeRepertoar]
ON [dbo].[Repertoars]
    ([Pozoriste_Id]);
GO

-- Creating foreign key on [NajavaId] in table 'Projekcijas'
ALTER TABLE [dbo].[Projekcijas]
ADD CONSTRAINT [FK_NajavaProjekcija]
    FOREIGN KEY ([NajavaId])
    REFERENCES [dbo].[Najavas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NajavaProjekcija'
CREATE INDEX [IX_FK_NajavaProjekcija]
ON [dbo].[Projekcijas]
    ([NajavaId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------



CREATE PROCEDURE ubaci_podatke
AS

Insert into Korisniks (Email, Sifra, Rola)
values ('test1@gmail.com', 'T1', 'Admin')
Insert into Korisniks (Email, Sifra, Rola)
values ('test2@gmail.com', 'T2', 'Admin')
Insert into Korisniks (Email, Sifra, Rola)
values ('test3@gmail.com', 'T3', 'Korisnik')

GO;


CREATE FUNCTION IzracunajPopust (@ID INT)
RETURNS INT
AS BEGIN
    DECLARE @Popust INT = 0;

    DECLARE @BrojKarata INT = 0;
	SET @BrojKarata = (select COUNT(*) as cnt from Kartas group by KorisnikId)

    IF @BrojKarata > 2
	BEGIN
		-- Popust broj karata puta 5 dobijes procenat (8 * 5) = 40% popusta
		SET @Popust = @BrojKarata * 5;
	END
    RETURN @Popust
END

go;

-- DODAT INDEX ZA PRETRAGU PREDSTAVA PO NAZIVU
IF OBJECT_ID(N'[dbo].[IX_Naziv_Predstave]', 'U') IS NOT NULL
    DROP TABLE [dbo].IX_Naziv_Predstave;
GO


CREATE INDEX IX_Naziv_Predstave
ON Predstavas (Naziv);

go;