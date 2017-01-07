<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa user o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// dm@o984

// ** Configurações do MySQL - Você pode pegar estas informações
// com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'livreaprendizagem');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', '123456');

/** Nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Charset do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para desvalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'gvvPpO$PHNV;S5MH+;C&Gy+1i{VQLGfLMbAvC&Mj$Or;1mVC]y =<q6ujYLGq#ye');
define('SECURE_AUTH_KEY',  'oLlVdpN]30FKXs0HLm1|K*.|/F4l-,xH:DF43K3KAKIUHen(j{5jBJQv$-{d^eQ_');
define('LOGGED_IN_KEY',    'W$S5[O96|{*&?p4%~K$9mRJ}-1F.y/0$8Wo.x~]M!sn%.[=}Uw})X-/e@5zLsa=b');
define('NONCE_KEY',        'tVU0~Hb?yCp;?fq2$bxB0nY$-q09+)}ZHCE~O$NxP-/5tWk7K|GL5eApMtg9NiwL');
define('AUTH_SALT',        '=n&N~*TUXep>vgMq,:| m+85WK2 I/1Gl:i=qxgq=E ,!f;F.?=iq6ah;?Yi*dz%');
define('SECURE_AUTH_SALT', 'Hv,o.a}HLTvu7j[fhI$qj#y~dLm)kH+bnn6ytVmHwUjx9#`$dS2o9s69E{>-/uC.');
define('LOGGED_IN_SALT',   'JX(7WXd[!)0Zy-7`~!oXS &FSv}BK@oH<tde;7S6A:%8AOp1sTGjAO&RZOtHum?N');
define('NONCE_SALT',       'XryZl~d|.n;EwlEYJP0n9$Xj^hNcjn%=56j&f{p$@,~ICgr]^N,8[_ach7:KlV70');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * para cada um um único prefixo. Somente números, letras e sublinhados!
 */
$table_prefix  = 'freud_';

/**
 * Para desenvolvedores: Modo debugging WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

define('FS_METHOD','direct');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
