<?php

/*
 * This file is part of the Symfony CMF package.
 *
 * (c) 2011-2017 Symfony CMF
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

$container->setParameter('cmf_testing.bundle_fqn', 'Sonata\DoctrinePHPCRAdminBundle');
$loader->import(CMF_TEST_CONFIG_DIR.'/default.php');
$loader->import(__DIR__.'/sonata_phpcr_admin.yml');
$loader->import(CMF_TEST_CONFIG_DIR.'/phpcr_odm.php');
