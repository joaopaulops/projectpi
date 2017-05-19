<?php
namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * ComprovantesFixture
 *
 */
class ComprovantesFixture extends TestFixture
{

    /**
     * Fields
     *
     * @var array
     */
    // @codingStandardsIgnoreStart
    public $fields = [
        'id' => ['type' => 'integer', 'length' => 10, 'unsigned' => true, 'null' => false, 'default' => null, 'comment' => '', 'autoIncrement' => true, 'precision' => null],
        'user_id' => ['type' => 'integer', 'length' => 10, 'unsigned' => true, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'boleto_id' => ['type' => 'integer', 'length' => 10, 'unsigned' => true, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'recibo_id' => ['type' => 'integer', 'length' => 10, 'unsigned' => true, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'payment' => ['type' => 'date', 'length' => null, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null],
        'Maturity' => ['type' => 'date', 'length' => null, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null],
        'aproved' => ['type' => 'boolean', 'length' => null, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null],
        '_indexes' => [
            'fk_boleto_id' => ['type' => 'index', 'columns' => ['boleto_id'], 'length' => []],
            'fk_user_id' => ['type' => 'index', 'columns' => ['user_id'], 'length' => []],
            'fk_recibo_id' => ['type' => 'index', 'columns' => ['recibo_id'], 'length' => []],
        ],
        '_constraints' => [
            'primary' => ['type' => 'primary', 'columns' => ['id'], 'length' => []],
            'fk_boleto_id' => ['type' => 'foreign', 'columns' => ['boleto_id'], 'references' => ['files', 'id'], 'update' => 'restrict', 'delete' => 'restrict', 'length' => []],
            'fk_recibo_id' => ['type' => 'foreign', 'columns' => ['recibo_id'], 'references' => ['files', 'id'], 'update' => 'restrict', 'delete' => 'restrict', 'length' => []],
            'fk_user_id' => ['type' => 'foreign', 'columns' => ['user_id'], 'references' => ['users', 'id'], 'update' => 'restrict', 'delete' => 'restrict', 'length' => []],
        ],
        '_options' => [
            'engine' => 'InnoDB',
            'collation' => 'latin1_swedish_ci'
        ],
    ];
    // @codingStandardsIgnoreEnd

    /**
     * Records
     *
     * @var array
     */
    public $records = [
        [
            'id' => 1,
            'user_id' => 1,
            'boleto_id' => 1,
            'recibo_id' => 1,
            'payment' => '2017-04-07',
            'Maturity' => '2017-04-07',
            'aproved' => 1
        ],
    ];
}
