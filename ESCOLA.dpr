program ESCOLA;

uses
  Vcl.Forms,
  U_login in 'U_login.pas' {frm_login},
  U_principalpas in 'U_principalpas.pas' {frm_prncipal},
  U_pesquisaCurso in 'U_pesquisaCurso.pas' {frm_pesquisacurso},
  U_cadastroAluno in 'U_cadastroAluno.pas' {frm_cadaluno},
  U_dm in 'U_dm.pas' {dm: TDataModule},
  U_altCadAluno in 'U_altCadAluno.pas' {frm_altcadaluno},
  U_pqal in 'U_pqal.pas' {frm_pqal},
  U_cadastrocurso in 'U_cadastrocurso.pas' {frm_cadcurso},
  U_pqCurso in 'U_pqCurso.pas' {frm_pqCurso},
  U_altCur in 'U_altCur.pas' {frm_altCurso},
  U_exCurso in 'U_exCurso.pas' {frm_excurso},
  U_pqexcur in 'U_pqexcur.pas' {frm_pqex},
  U_exaluno in 'U_exaluno.pas' {frm_exaluno},
  U_pqexaluno in 'U_pqexaluno.pas' {frm_pqexal},
  U_pesquisaUsu in 'U_pesquisaUsu.pas' {frm_pesquisauser},
  U_caduser in 'U_caduser.pas' {frm_caduser},
  U_altuser in 'U_altuser.pas' {frm_altuser},
  U_pesqaluser in 'U_pesqaluser.pas' {frm_pqaluser},
  U_deluserpas in 'U_deluserpas.pas' {frm_deluser},
  U_pqdeluser in 'U_pqdeluser.pas' {frm_pqdeluser},
  U_im in 'U_im.pas' {frm_impressao_carteirinha},
  U_imcaluno in 'U_imcaluno.pas' {frm_imaluno},
  U_inicio in 'U_inicio.pas' {frm_inicio},
  U_cadturma in 'U_cadturma.pas' {frm_cadturma},
  U_altturma in 'U_altturma.pas' {frm_altturma},
  U_altpesturma in 'U_altpesturma.pas' {frm_pqaltturma},
  U_turma_relacao in 'U_turma_relacao.pas' {frm_turma_relacao},
  U_im_turma in 'U_im_turma.pas' {frm_turma_documento},
  U_pes_turma_relacao in 'U_pes_turma_relacao.pas' {frm_pesqimpturma},
  U_exturma in 'U_exturma.pas' {frm_exturma},
  U_imprime_atestado in 'U_imprime_atestado.pas' {frm_imprecao_atestadof},
  U_cad_avaliacao in 'U_cad_avaliacao.pas' {frm_cad_avaliacao},
  U_lancamento_notas in 'U_lancamento_notas.pas' {frm_lacamento_notas},
  U_principal_professor in 'U_principal_professor.pas' {frm_principal_professor},
  U_inicio_professor in 'U_inicio_professor.pas' {Form3},
  U_lancamento_notas_quadro in 'U_lancamento_notas_quadro.pas' {frm_lacamento_notas_quadro},
  U_busca_img_rg in 'U_busca_img_rg.pas' {frm_busca_img_rg},
  U_alteracao_senha in 'U_alteracao_senha.pas' {frm_alteracao_senha},
  U_meu_perfil in 'U_meu_perfil.pas' {frm_meu_perfil},
  U_Matricula in 'U_Matricula.pas' {frm_matricula},
  U_cad_professor in 'U_cad_professor.pas' {frm_cad_professor},
  U_pesq_professor in 'U_pesq_professor.pas' {frm_pesquisa_professor},
  U_alt_professor in 'U_alt_professor.pas' {frm_alt_professor},
  U_del_professor in 'U_del_professor.pas' {frm_del_professor},
  U_pesq_matricula in 'U_pesq_matricula.pas' {frm_pq_matricula},
  U_alt_matricula in 'U_alt_matricula.pas' {frm_alt_matricula},
  U_del_matricula in 'U_del_matricula.pas' {frm_del_matricula},
  U_pesq_avaliacao in 'U_pesq_avaliacao.pas' {frm_pesq_avaliacao},
  U_pesq_turma_prof in 'U_pesq_turma_prof.pas' {frm_pesq_turma_professor},
  U_del_avaliacao in 'U_del_avaliacao.pas' {frm_del_avaliacao},
  U_impressao_certificado in 'U_impressao_certificado.pas' {frm_impressao_certificado},
  U_impressao_notas in 'U_impressao_notas.pas' {frm_impressao_contrato_matricula},
  U_notas_modulos in 'U_notas_modulos.pas' {frm_media_aluno},
  U_financeiro in 'U_financeiro.pas' {frm_financeiro},
  U_lancamento_financeiro in 'U_lancamento_financeiro.pas' {frm_lancamento_financeiro},
  U_periodo_valorizacao in 'U_periodo_valorizacao.pas' {frm_periodo_valorizacao},
  u_imprimir_valorizacao in 'u_imprimir_valorizacao.pas' {frm_imprimir_valorizacao},
  u_alt_avaliacao in 'u_alt_avaliacao.pas' {frm_alt_avaliacao},
  U_visao_geral_notas in 'U_visao_geral_notas.pas' {frm_visao_geral_notas},
  u_ver_notas_vermelhasEverdes in 'u_ver_notas_vermelhasEverdes.pas' {frm_ver_notas_vermelhasEverdes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_login, frm_login);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfrm_alteracao_senha, frm_alteracao_senha);
  Application.CreateForm(Tfrm_meu_perfil, frm_meu_perfil);
  Application.CreateForm(Tfrm_matricula, frm_matricula);
  Application.CreateForm(Tfrm_cad_professor, frm_cad_professor);
  Application.CreateForm(Tfrm_alt_professor, frm_alt_professor);
  Application.CreateForm(Tfrm_del_professor, frm_del_professor);
  Application.CreateForm(Tfrm_pq_matricula, frm_pq_matricula);
  Application.CreateForm(Tfrm_alt_matricula, frm_alt_matricula);
  Application.CreateForm(Tfrm_del_matricula, frm_del_matricula);
  Application.CreateForm(Tfrm_imprecao_atestadof, frm_imprecao_atestadof);
  Application.CreateForm(Tfrm_impressao_carteirinha, frm_impressao_carteirinha);
  Application.CreateForm(Tfrm_turma_documento, frm_turma_documento);
  Application.CreateForm(Tfrm_del_avaliacao, frm_del_avaliacao);
  Application.CreateForm(Tfrm_impressao_certificado, frm_impressao_certificado);
  Application.CreateForm(Tfrm_impressao_contrato_matricula, frm_impressao_contrato_matricula);
  Application.CreateForm(Tfrm_media_aluno, frm_media_aluno);
  Application.CreateForm(Tfrm_financeiro, frm_financeiro);
  Application.CreateForm(Tfrm_lancamento_financeiro, frm_lancamento_financeiro);
  Application.CreateForm(Tfrm_periodo_valorizacao, frm_periodo_valorizacao);
  Application.CreateForm(Tfrm_imprimir_valorizacao, frm_imprimir_valorizacao);
  Application.CreateForm(Tfrm_alt_avaliacao, frm_alt_avaliacao);
  Application.CreateForm(Tfrm_visao_geral_notas, frm_visao_geral_notas);
  Application.CreateForm(Tfrm_ver_notas_vermelhasEverdes, frm_ver_notas_vermelhasEverdes);
  Application.Run;
end.
